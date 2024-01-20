




class MoviesController < ApplicationController
  before_action :set_movie, only: %i[show destroy edit update]
  def index
    @movies = Movie.all
  end
  def show
    #  ...
  end
  def new
    @newMovie = Movie.new
  end
  def create
    movie = Movie.new(movie_params)
    movie.save
    redirect_to movies_path
  end
  def destroy
    @movie.destroy
    redirect_to movies_path
  end
  def edit
    #  ...
  end
  def update
    @movie.update(movie_params)
    redirect_to movies_path
  end
  private
  def set_movie
    @movie = Movie.find(params[:id])
  end
  def movie_params
    params.require(:movie).permit(:title, :overview, :poster_url, :rating)
  end
end
