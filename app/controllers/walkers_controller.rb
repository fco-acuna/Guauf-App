class WalkersController < ApplicationController
  def index
  @walkers = Walker.all
  @walkers = User.includes(:services).where(role: 'Walker')
  end

  def show
    @walker = Walker.find(params[:id])
  end

  def new
    @walker = Walker.new
  end

  def create
    @walker = Walker.new(walker_params)
    @walker.user = current_user
    if @walker.save
      redirect_to walker_path(@walker)
    else
      render :new
    end
  end

  def edit
    @walker = Walker.find(params[:id])
  end

  def update
    @walker = Walker.find(params[:id])
    @walker.update(walker_params)
    redirect_to walker_path(@walker)
  end

  def destroy
    @walker = Walker.find(params[:id])
    @walker.destroy
    redirect_to walkers_path
  end
end
