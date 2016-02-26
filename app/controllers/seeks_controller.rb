class SeeksController < ApplicationController
  def index
    @seek = Seek.all
  end

  def new
    @seek = Seek.new
  end

  def create
    @seek = Seek.new(seek_params)
    if @seek.save
      flash[:notice] = "Your seek was created."
      redirect_to @seek
    else
      flash[:notice] = "There was a problem creating your seek."
      redirect_to :back
    end
  end

  def show
    @seek = Seek.find(params[:id])
  end

  def edit
  end

  def destroy
    @seek = Seek.find(params[:id])
    @seek.destroy
    flash[:notice] = "Your seek has been destroyed."
    redirect_to root_path
  end

  private
  
  def seek_params
    params.require(:seek).permit(:name, :organization_id, :comment)
  end

end
