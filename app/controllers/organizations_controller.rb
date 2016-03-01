class OrganizationsController < ApplicationController
  def new
    @org = Organization.new
  end

  def index
    @orgs = Organization.all
  end

  def create
    @org = Organization.new(org_params)
    if @org.save
      redirect_to @org
      flash[:notice] = "Your account has been created."
    else
      redirect_to :back
      flash[:notice] = "There was a problem creating your account."
    end
  end

  def show
    @org = Organization.find(params[:id])
    @donandseek = DonAndSeekConnect.new

    # gmaps builder
    @hash = Gmaps4rails.build_markers(@org) do |org, marker|
      marker.lat org.latitude
      marker.lng org.longitude
    end
  end

  def destroy
    @org = Organization.find(params[:id])
    @org.destroy
    redirect_to root_path
  end

  def seeks
  end

  private
  def org_params
    params.require(:organization).permit(:username, :email, :password, :address, :avatar)
  end
end
