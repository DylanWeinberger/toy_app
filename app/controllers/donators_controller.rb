class DonatorsController < ApplicationController
  def new
    @don = Donator.new
  end

  def index
    @dons = Donator.all
  end

  def create
    @don = Donator.new(don_params)
    if @don.save
      redirect_to @don
      flash[:notice] = "Your account has been created."
    else
      redirect_to :back
      flash[:notice] = "There was a problem creating your account."
    end
  end

  def show
    @don = Donator.find(params[:id])
  end

  def edit
  end

  def destroy
    @don = Donator.find(params[:id])
    @don.destroy
    redirect_to root_path
  end
  private
  def don_params
    params.require(:donator).permit(:username, :email, :password)
  end
end
