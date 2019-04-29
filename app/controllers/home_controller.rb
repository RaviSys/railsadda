class HomeController < ApplicationController
  def index
    @articles = Article.last(3)
  end

  def about;end

  def skills_autocomplete
    @skills = Skill.order(:name).map { |skill| skill.name }
    render json: @skills
  end

end
