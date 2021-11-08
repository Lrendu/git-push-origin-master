class GamesController < ApplicationController

  def new
     @alphabet = ('a'...'z').to_a.shuffle[0..10].join
  end

  def score
    @word= params[:word]
    @alphabet = params[:alphabet]
    @word.chars.all? do |letter|
      if
    @score = @word.count(letter) <= @alphabet.count(letter)
      end

    end
  end

def english_wordhabet
    @word = params[:word]
    url = “https://wagon-dictionary.herokuapp.com/#{@alphabet}”
    word_dictionary = open(url).read
    word = JSON.parse(word_dictionary)
    return word[‘found’]
  end

end
