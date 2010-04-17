module StickyWidget
  module ControllerHelpers
  def save_sticky_params
    session[:sticky_params] = session[:sticky_params].merge(params)
  end
  
  def sticky_param(term)
    session[:sticky_params][term]
  end

  def sticky_params
    session[:sticky_params]
  end
  
  def render(options)
    if options[:sticky_widget]
      @page = options[:sticky_widget]
      render :file => RAILS_ROOT + '/lib/sticky_widget/sticky.html.erb'
    else
      super(options)
    end
  end
  end
end