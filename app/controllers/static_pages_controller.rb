class StaticPagesController < ApplicationController
  before_action :set_flickr

  def home

  end

  def results

  end

  private

  def set_flickr
    ENV['FLICKR_API_KEY']
    ENV['FLICKR_SHARED_SECRET']
    @flickr = Flickr.new
  end
end
