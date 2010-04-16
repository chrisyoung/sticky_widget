class SearchController < ApplicationController
  def new
    respond_to do |format|
      format.js {render :sticky_widget => 'search/new.html.erb'}
    end
  end
  
  def show
    @term = sticky_params('term')
    respond_to do |format|
      format.js {render :sticky_widget => 'search/show.html.erb'}
    end
  end
  
  def create
    redirect_to page_path('search_result')
  end
end
