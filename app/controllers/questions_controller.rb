class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = ""
    # If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!
    if @question.ends_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    # If the message is I am going to work, the coach will answer Great!
    elsif @question.include? "I am going to work"
      @answer = "Great!"
    # Otherwise the coach will answer I don't care, get dressed and go to work!
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
