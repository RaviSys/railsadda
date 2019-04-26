class User::SitesController < UserController

  def dashboard;end

  def activities
    @activities = @user.visits
  end

  def profile;end

  def manage_skills
    @skills = Skill.order(:name)
  end

  def update_skills
    if params[:skills][:skill_remove].present?
      id_param_arr = params[:skills][:skill_remove].map {|i| i.to_i}
      if @user.skills.ids.uniq != id_param_arr
        diff_arr = @user.skills.ids - id_param_arr
        @user.user_skills.where('skill_id IN (?)', diff_arr).destroy_all
      end
    else
      @user.user_skills.destroy_all
    end
    if params[:skills][:skill_add].present?
      params[:skills][:skill_add].each do |skill_id|
        @user.user_skills.create(skill_id: skill_id)
      end
    end
    redirect_to user_skills_path, flash: { success: 'Your skills has been updated' }
  end

end
