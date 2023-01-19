class GamesController < ApplicationController

  def new
    @letters = ('A'..'Z').to_a.sample(10)
  end

  def score
    @word = params[:word]
    @letters
  end

  # def search
  #   fetch(`https://wagon-dictionary.herokuapp.com/${@word}`)
  #   .then(response => response.json())
  #   .then((data) => {
  #     // "found": false,
  #     // "word": ":word";
  #     // "error": "word not found";
  #     console.log(data)
  #     })}
  # end
end
