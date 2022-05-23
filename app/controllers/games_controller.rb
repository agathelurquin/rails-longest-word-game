class GamesController < ApplicationController
  def new
    @letters = []
    alphabet = ('a'..'z').to_a
    (1..10).to_a.each { |_| @letters << alphabet.sample.capitalize }
    @letters
  end

  def score
    @user_word = params[:user_word]
  end
end
