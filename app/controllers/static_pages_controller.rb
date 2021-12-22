class StaticPagesController < ApplicationController
  def home
  end

  def results
    ENV['FLICKR_API_KEY']
    ENV['FLICKR_SHARED_SECRET']
    @flickr = Flickr.new
  end
end
