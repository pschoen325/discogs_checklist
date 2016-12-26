class WelcomeController < ApplicationController
  include HTTParty
  def index
    params["q"]
    response = HTTParty.get('https://api.discogs.com/database/search?q=Nirvana&key=FGZHLtGLOCjUnoZAgbFk&secret=rrZYLTNUGyAjkDYVUwVyffMJZoxykbyS')
    @results = response["results"]
  end
end
