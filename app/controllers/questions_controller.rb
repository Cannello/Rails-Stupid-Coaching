class QuestionsController < ApplicationController

  def ask; end

  def answer
      @question = params[:question]
      @answer = coach_answer(@question)
  end

  def coach_answer(question)
    if question.downcase == "i am going to work"
      'Great!'
    elsif question == "what time is it?"
      Time.now
    elsif question.end_with?("?")
      "Silly question, get dressed and go to work!"
    elsif question == "hello"
      "Hello to you too"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
