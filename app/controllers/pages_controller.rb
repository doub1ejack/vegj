class PagesController < ApplicationController
  
  # GET /dashboard
  # GET /dashboard.json
  def dashboard
    @user = current_user
    @gardens = Garden.all.where(:user_id => @user.id)
  end
  
end
