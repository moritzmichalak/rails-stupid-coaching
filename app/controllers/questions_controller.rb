class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    noquestionposed = "I don't care, get dressed and go to work!"
    questionposed = 'Silly question, get dressed and go to work!'
    @answer =
      if @question == 'I am going to work'
        'Great!'
      elsif @question.include?('?')
        questionposed
      else noquestionposed
      end
  end
end
