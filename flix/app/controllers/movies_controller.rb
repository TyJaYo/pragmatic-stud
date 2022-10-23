class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find_by(title: params[:title])
  end

  def edit
    @movie = Movie.find_by(title: params[:title])
  end

  def update
    @movie = Movie.find(params[:id])
    movie_params =
      params.require(:movie)
            .permit(:title, :description, :rating, :released_on, :total_gross)
    @movie.update(movie_params)
    redirect_to movie_path(@movie.title)
  end
end
