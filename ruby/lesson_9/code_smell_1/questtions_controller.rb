class QuestionsController
  before_action :find_survey, only: [:create]
  before_action :find_question, only: [:update, :destroy]

  def create
    @question = Question.new(question_params)
    @question.survey = @survey
    if @question.save
      redirect_to questions_path
    else
      render :new
    end
  end

  def update
    @question.update_attributes(question_params)
    if @question.save
      redirect_to @question.survey
    else
      render :edit
    end
  end

  def destroy
    if @question.destroy
      redirect_to questions_path
    else
      render :edit, flash[:alert] = 'error'
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :options_attributes, :minimum, :maximum)
  end

  def find_question
    @question = Question.find(params[:id])
    redirect_to root_path if @question.blank?
  end

  def find_survey
    @survey = Survey.find(params[:survey_id])
    redirect_to root_path if @survey.blank?
  end
end
