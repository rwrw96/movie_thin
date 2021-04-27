class MoviesController < ApplicationController
  require "themoviedb-api"
  Tmdb::Api.language("ja")
  Tmdb::Api.key("")
  
  
  def index
  end
  
end
