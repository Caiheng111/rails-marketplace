class CharitiesController < ApplicationController

  before_action :set_charity, only:[:edit, :update, :show, :destroy]
  before_action :authenticate_user!, :except => [:listings]

  def listings
    # @charities = Charity.all

    if (params.has_key?(:location))
      @charities=Charity.where(location:params[:location])
    else
      @charities=Charity.search(params[:search])
    end

   




  end

  def index
    @charities=current_user.organization.charities
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
 
  end

  def update
    if @charity.update(charity_params)
      
      redirect_to charity_path(@charity)
    else
      render 'edit'
    end
  end

  def show
    
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
      params.require(:charity).permit(:title,:location, :project_leader, :category_id,:raised_goal, :current_raised, :summary, :challenges,:solution, pictures: [])
    end

end
