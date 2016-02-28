class SeeksController < ApplicationController
  def index
    @seeks = Seek.all
  end

  def new
    @seek = Seek.new
  end

  def create
    @seek = Seek.new(seek_params)
    @seek.organization_id = current_org.id 
    @seek.toy_id = params[:seek][:toy_id]
    if @seek.save
      flash[:notice] = "Your seek was created."
      redirect_to @current_org
    else
      flash[:notice] = "There was a problem creating your seek."
      redirect_to :back
    end
  end

  def show
    @seek = Seek.find(params[:id])
    @donandseek = DonAndSeekConnect.new
  end

  def edit
  end

  def destroy
    @seek = Seek.find(params[:id])
    @seek.destroy
    flash[:notice] = "Your seek has been destroyed."
    redirect_to :back
  end

  private

  def seek_params
    params.require(:seek).permit( :organization_id, :toy_id, :comment, :active)
  end

end
