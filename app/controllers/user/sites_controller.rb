class User::SitesController < ApplicationController

  before_action :authenticate_user!

  def dashboard
    
  end

  def activities
    @activities = current_user.visits
  end

  def profile
    @user = current_user
  end

end
