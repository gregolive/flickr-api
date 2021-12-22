class StaticPagesController < ApplicationController
  before_action :set_flickr_api, only: %i[results]

  def home
  end

  def results
    @user = @flickr.people.getInfo user_id: (params[:/][:user]) rescue nil
    if @user
      #@photos = 
    end
    
  end

  private

  def set_flickr_api
    ENV['FLICKR_API_KEY']
    ENV['FLICKR_SHARED_SECRET']
    @flickr = Flickr.new
  end
end
