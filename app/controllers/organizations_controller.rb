
class OrganizationsController < ApplicationController
  before_action :set_organization, only:[:edit, :update, :show]
  before_action :authenticate_user!

  def index

  end

   
  def new
    @organization=Organization.new
  end


  def create
    @organization=current_user.create_organization(organization_params)
 
    if @organization.save
        redirect_to organization_path(@organization)
    else
        render 'new'
    end 
  end

  def edit
     # only allows user to access the edit page of his own profile
     if current_user.id == Organization.find(params[:id]).user.id
      @organization = Organization.find(params[:id])
    else
      redirect_to root_path
    end
 
  end

  def update
    if @organization.update(organization_params)
      
      redirect_to organization_path(@organization)
    else
      render 'edit'
    end
  end

  def show
    
  end

  

  private

    def set_organization
      @organization = Organization.find(params[:id])
    end

    def organization_params
      params.require(:organization).permit(:title,:description, :website, :location)
    end


end