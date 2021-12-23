class StaticPagesController < ApplicationController
  before_action :set_query

  def index
    return if @query.nil?

    begin
      flickr = Flickr.new
      @user = flickr.people.getInfo user_id: @query
    rescue StandardError => e
      flash[:alert] = "#{e.class} : #{e.message} Whoops! 🤭 No user found with ID: #{@query}"
      redirect_to root_path
    else
      flash[:notice] = "Success! 🎉 Flickr user found with ID: #{@query}"
      @photos = flickr.people.getPhotos user_id: @query
    end
  end

  private

  def set_query
    @query = params[:query][:user] rescue nil
  end
end
