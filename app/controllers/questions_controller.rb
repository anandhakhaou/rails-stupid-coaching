class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    # puts @question.nil?
    if @question == 'I am going to work'
      @coach_answer = 'Great!'
    elsif @question.include?('?')
      @coach_answer = "Silly question, get dressed and go to work!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
    # @category = params[:food_type]
    # @restaurants = RESTAURANTS.select { |id, r| r[:category] == @category
