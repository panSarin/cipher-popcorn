class SearchForMovies
  require 'net/http'

  def initialize(request_movie_form)
    @movie_form = request_movie_form
  end

  def process
    uri = URI.parse("https://itunes.apple.com/search?term=#{@movie_form.term}&attribute=#{@movie_form.attribute}&media=movie")
    JSON.parse(Net::HTTP.get(uri))['results']
  end

end
