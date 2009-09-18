class NewsDashboardController < ApplicationController
  
  def index
    @geocode = params[:geocode] || "53.5051,10.318577"
    # 
    panoramico_image_result = Net::HTTP.get_response('www.panoramio.com', '/map/get_panoramas.php?order=popularity&set=public&from=0&to=20&minx=10.218577&miny=53.405134&maxx=10.418577&maxy=53.605134&size=medium').body
    @panoramico_images = JSON.parse(panoramico_image_result)["photos"]
    @range   = params[:range] || "5km"
    @feeds = Rails.cache.fetch("53.5051,10.318577", {:ttl => 30.minutes}) do
      # tourblog hamburg
      # http://www.mattwagner.de/blog.htm
      [["twitter",FeedNormalizer::FeedNormalizer.parse(open("http://search.twitter.com/search.atom?geocode=#{@geocode},#{@range}"))],
      ["hamburgde", FeedNormalizer::FeedNormalizer.parse(open("http://www.hamburg.de/stadt-staat,rss/"))],
      ["ringfahndung", FeedNormalizer::FeedNormalizer.parse(open("http://www.ringfahndung.de/feed"))],
      ["sommerinhamburg", FeedNormalizer::FeedNormalizer.parse(open("http://feeds.feedburner.com/~r/sommerinhamburg/~6/1"))]]    
    end
    
    @flickr_images = []
  end
  
end