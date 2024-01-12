# app/controllers/users_controller.rb
class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update, :delete_avatar]

  def show
    # No se necesita lógica adicional aquí si estás utilizando Devise
  end

  def edit
    # No se necesita lógica adicional aquí si estás utilizando Devise
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user), notice: 'Perfil actualizado exitosamente.'
    else
      render :edit
    end
  end

  def delete_avatar
    current_user.photo.purge
    redirect_to '/mi_perfil', notice: 'Avatar eliminado exitosamente.'
  end

  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:name, :email, :phone_number, :address, :about_me, :avatar)
  end
end
