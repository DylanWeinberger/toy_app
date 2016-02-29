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

  def update
    @seek = Seek.find(params[:id])
    if @seek.update(seek_params)
      flash[:notice] = "Your toy has been marked as sent."
      redirect_to :back
    else
      flash[:notice] = "something went wrong. please try again."
      redirect_to :back
    end
  end

  def destroy
    @seek = Seek.find(params[:id])
    @seek.destroy
    flash[:notice] = "Your seek has been destroyed."
    redirect_to :back
  end

  private

  def seek_params
    params.require(:seek).permit( :organization_id, :toy_id, :comment, :active, :sent)
  end

end
