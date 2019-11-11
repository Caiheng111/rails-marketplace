class CharitiesController < ApplicationController

  before_action :set_charity, only:[:edit, :update, :show, :destroy]
  before_action :authenticate_user!, :except => [:listings, :show]

  def listings

    # add search function  
  
    if(params.has_key?(:search))
      @charities = Charity.where(["summary LIKE ?","%#{params[:search]}%"]).paginate(page: params[:page],per_page:6)
    else
      @charities = Charity.paginate(page: params[:page],per_page:6)

    end
   # add sort function  
    if (params.has_key?(:location))
      @charities = Charity.where(location:params[:location]).paginate(page: params[:page],per_page:3)
  
    end
   # add filter function  
    if (params.has_key?(:category))
      @charities = Charity.where(category:params[:category]).paginate(page: params[:page],per_page:3)
    end

  end

  # show the current organization's projects
  def index
    @charities=current_user.organization.charities.paginate(page: params[:page],per_page:6)
  end

   
  def new
    @charity=Charity.new

  end


  def create
    @charity=current_user.organization.charities.create(charity_params)
    if @charity.save
        redirect_to charity_path(@charity)
    else
        render 'new'
    end 
  end

  

  def edit
    # only allows user to access the edit page of his own listings
    @charity = Charity.find(params[:id])
    if current_user.admin?
      
    elsif current_user.id != @charity.organization.user_id 
        redirect_to root_path
    end
  end

  def update
    if @charity.update(charity_params)
      
      redirect_to charity_path(@charity)
    else
      render 'edit'
    end
  end

  def show

    @charities = Charity.order("created_at DESC").limit(2)
    
  end

  def destroy
    @charity.destroy
    redirect_to charities_path
  end

  private

    def set_charity
      @charity = Charity.find(params[:id])
    end

    def charity_params
      params.require(:charity).permit(:title,:location, :project_leader, :category_id,:raised_goal, :current_raised, :summary, :challenges,:solution, :donate_basic, pictures: [])
    end

end
