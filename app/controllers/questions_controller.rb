# FUCK OFF RUBOCOP
# frozen_string_litteral = true
class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = if @question[-1] == '?'
                'Silly question, get dressed and go to work!'
              elsif @question.casecmp?('I am going to work')
                'Great!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
