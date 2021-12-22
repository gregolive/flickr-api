class StaticPagesController < ApplicationController
  before_action :set_flickr_api, only: %i[results]

  ENV['FLICKR_API_KEY']
  ENV['FLICKR_SHARED_SECRET']

  def home
  end

  def results
    @query = params[:/][:user]
    @user = @flickr.people.getInfo user_id: @query rescue nil
    if @user
      @photos = @flickr.people.getPhotos user_id: @query
    end
  end

  private

  def set_flickr_api
    @flickr = Flickr.new
  end
end
