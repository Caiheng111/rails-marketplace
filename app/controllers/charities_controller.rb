class CharitiesController < ApplicationController

  before_action :set_charity, only:[:edit, :update, :show]
  before_action :authenticate_user!

  def index

  end

   
  def new
    @charities=Charity.new
  end


  def create
    @charity=current_user.charities.create(charity_params)
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


  private

    def set_charity
      @charity = Charity.find(params[:id])
    end

    def charity
      params.require(:charity).permit(:title,:location, :project_leader, :category_id,:raised_goal, :current_raised, :summary, :challenges,:solution)
    end

end
