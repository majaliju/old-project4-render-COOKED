class GenresController < ApplicationController
  def index
    genres = Genre.all
    render json: genres
  end

  def show
    genre = Genre.find_by(id: params[:id])
    render json: genre, status: 200
  end
end
