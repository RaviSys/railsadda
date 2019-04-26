class User::WorkSamplesController < UserController
  before_action :set_work_sample, only: [:show, :edit, :update, :destroy]

  def index
    @work_samples = @user.work_samples
  end

  def show;end

  def new
    @work_sample = WorkSample.new
  end

  def edit;end

  def create
    @work_sample = WorkSample.new(work_sample_params)
    respond_to do |format|
      if @work_sample.save
        format.html { redirect_to user_work_sample_path(@work_sample), notice: 'Work sample was successfully created.' }
        format.json { render :show, status: :created, location: @work_sample }
      else
        format.html { render :new }
        format.json { render json: @work_sample.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @work_sample.update(work_sample_params)
        format.html { redirect_to user_work_sample_path(@work_sample), notice: 'Work sample was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_sample }
      else
        format.html { render :edit }
        format.json { render json: @work_sample.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @work_sample.destroy
    respond_to do |format|
      format.html { redirect_to user_work_samples_path, notice: 'Work sample was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_work_sample
      @work_sample = WorkSample.friendly.find(params[:id])
    end

    def work_sample_params
      params.require(:work_sample).permit!
    end
end
