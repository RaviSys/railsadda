class User::SitesController < UserController

  def dashboard;end

  def activities
    @activities = @user.visits
  end

  def profile;end

end
