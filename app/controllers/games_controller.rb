require "json"
require "open-uri"

class GamesController < ApplicationController
  # include GamesHelper
  # include ApplicationHelper

  def new
    @letters = ('A'..'Z').to_a.sample(10)
  end

  def score
    @word = params[:word]
    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    word_serialized = URI.open(url).read
    @result = JSON.parse(word_serialized)
    @letters_chosen = new
  end
end
