class MoviesController < AuthenticatedController
  def index
    @request_form = MovieRequestForm.new
  end

  def search
    movie_request_form = MovieRequestForm.new(params[:movie_request_form])
    search_for_movies = SearchForMovies.new(movie_request_form)
    @movies = search_for_movies.process
  end
end
