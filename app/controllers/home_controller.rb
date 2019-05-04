class HomeController < ApplicationController
  def index
    @articles = Article.last(3)
  end

  def about;end

  def skills_autocomplete
    @skills = Skill.order(:name).map { |skill| skill.name }
    render json: @skills
  end

  def search_professionals
    @skill = Skill.find_by(name: params[:search][:skill])
    @users = @skill.users
  end

  def profile
    @user = User.find(params[:id])
  end
end
