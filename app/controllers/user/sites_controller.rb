class User::SitesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def dashboard;end

  def activities
    @activities = current_user.visits
  end

  def profile;end

  private 

    def set_user
      @user = current_user
    end


end
