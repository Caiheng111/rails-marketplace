class VolunteersController < ApplicationController
  before_action :set_volunteer, only:[:edit, :update, :show]
  before_action :authenticate_user!, :except => [:listings]

  def listings
    @volunteers = Volunteer.all

  end

  def index

  end

   
  def new
    @volunteer=Volunteer.new
  end


  def create
    @volunteer=current_user.create_volunteer(volunteer_params)
    if @volunteer.save
        redirect_to volunteer_path(@volunteer)
    else
        render 'new'
    end 
  end

  def edit
 
  end

  def update
    if @volunteer.update(volunteer_params)
      
      redirect_to volunteer_path(@volunteer)
    else
      render 'edit'
    end
  end

  def show
    
  end

  private

    def set_volunteer
      @volunteer = Volunteer.find(params[:id])
    end

    def volunteer_params
      params.require(:volunteer).permit(:name,:description, :email, :skill, :location, :experience, :picture)
    end


end
