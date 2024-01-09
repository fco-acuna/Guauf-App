class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:home, :edit, :index]
end
