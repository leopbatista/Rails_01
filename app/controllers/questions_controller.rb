class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @search = params[:pergunta]
    if @search.blank?
      @answer = "I can't hear you!"
    elsif @search.downcase == "i am going to work"
      @answer = 'Great!'
    elsif @search.include?("?")
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
