class SearchController < ApplicationController
  after_filter :save_sticky_params, :only => :create
  
  def new
    respond_to do |format|
      format.js {render :sticky_widget => 'search/new.html.erb'}
    end
  end
  
  def show
    @term = sticky_param('term')
    render :sticky_widget => 'search/show.html.erb'}
  end
  
  def create
    redirect_to page_path('search_result')
  end
end
