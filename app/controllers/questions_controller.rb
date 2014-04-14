class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "Question created."
      redirect_to users_path
    else
      render 'new'
    end
  end

private
  def question_params
    params.require(:question).permit(:question, :user_id)
  end
end
