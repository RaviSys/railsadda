class User::SitesController < ApplicationController

  before_action :authenticate_user!

  def activities
    @activities = current_user.visits
  end

end
