class MoviesController < ApplicationController
  require "themoviedb-api"
  Tmdb::Api.language("ja")
  Tmdb::Api.key("")
  

  def show 
    @reviews = Review.all
    @review = Review.new
    @movieinfo = JSON.parse((Tmdb::Movie.detail(params[:id])).to_json)
  end
end
