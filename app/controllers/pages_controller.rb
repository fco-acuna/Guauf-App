class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:edit]

  def home
    @walkers = walker.all
    @user = current_user
  end
end
