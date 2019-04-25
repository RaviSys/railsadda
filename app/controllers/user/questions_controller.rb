class User::QuestionsController < UserController
  before_action :set_question, only: [:show, :edit, :update, :destroy]
  
  def index
    @questions = Question.all
  end

  def show
    prepare_meta_tags(
      title: @question.title,
      description: @question.answer,
      keywords: @question.keyword_list,
      twitter: {
        card: @question.title
        }
      )
  end

  def new
    @question = Question.new
  end

  def edit;end

  def create
    @question = Question.new(question_params)
    respond_to do |format|
      if @question.save
        format.html { redirect_to user_question_path(@question), notice: 'Question was successfully created.' }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to user_question_path(@question), notice: 'Question was successfully updated.' }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to user_questions_url, notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_question
      @question = Question.friendly.find(params[:id])
    end

    def question_params
      params.require(:question).permit!
    end
    
end
