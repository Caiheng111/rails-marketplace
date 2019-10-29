class VolunteersController < ApplicationController
  before_action :set_volunteer, only:[:edit, :update, :show]

  def index

  end

   
  def new
    @volunteer=Volunteer.new
  end


  def create
    @volunteer=Volunteer.new(volunteer_params)
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

  # def destroy
  #   @organization.destroy

  # end

  private

    def set_volunteer
      @volunteer = Volunteer.find(params[:id])
    end

    def volunteer_params
      params.require(:volunteer).permit(:name,:description, :email, :skill, :location, :experienmce)
    end


end
