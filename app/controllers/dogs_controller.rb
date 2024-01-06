class DogsController < ApplicationController
    def index
     @dogs = Dog.all
    end

    def new
     @dog = Dog.new     
    end

    def create
      @dog = Dog.new(dog_params)
      @dog.user = current_user
      @dog.save!
      redirect_to dog_path(@dog)
    end

    def show
     @dog = Dog.find(params[:id])
    end

    def edit
      @dog = Dog.find(params[:id])
    end

    def update
      @dog = Dog.find(params[:id])
      @dog.update(dog_params)            
    end

    def destroy
      @dog = Dog.find(params[:id])
      @dog.destroy
    end


    private

    def dog_params
     params.require(:dog).permit(:name, :date_of_birth, :breed, :size, :vaccines, :sickness_allergies, :about_me)
    end
end
