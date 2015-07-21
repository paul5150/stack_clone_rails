class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(question_params)
    if @answer.save
      redirect_to question_path(@answer.question)
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
  end

  def update
    @question= Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    if @answer.update(question_params)
      flash[:notice] = "Question has been edited successfully, brainiacs!"
      redirect_to question_path(@answer.question)
    else
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    @answer.destroy
    flash[:notice] = "Gone baby gone!"
    redirect_to question_path(@answer.question)
  end

  private
  def question_params
    params.require(:answer).permit(:info, :name)
  end
end
