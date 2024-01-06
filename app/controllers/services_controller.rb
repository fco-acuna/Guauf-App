class ServicesController < ApplicationController

  # GET /services
  def index
    @services = Service.all
  end

  # GET /services/:id
  def show
    @service = Service.find(params[:id])
  end

  # GET /services/new
  def new
    @service = Service.new
  end

  # POST /services
  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to walkers_path, notice: 'El servicio fue creado exitosamente.'
    else
      render :new
    end
  end

  # GET /services/:id/edit
  def edit
    @service = Service.find(params[:id])
  end

  # PATCH/PUT /services/:id
  def update
    @service = Service.find(params[:id])
    if @service.update(service_params)
      redirect_to walkers_path, notice: 'El servicio fue actualizado exitosamente.'
    else
      render :edit
    end
  end

  # DELETE /services/:id
  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    redirect_to services_url, notice: 'El servicio fue eliminado exitosamente.'
  end

  private

  def service_params
    params.require(:service).permit(:walking_time, :price, :distance, :user_id)
  end

end
