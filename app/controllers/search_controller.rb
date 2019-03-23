require 'google_rss'

class SearchController < ApplicationController
  def index
  end

  def create
    keywords = params[:keywords].split(' ')
    @articles = search_for(keywords)
  end
end
