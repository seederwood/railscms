class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :get_page_nav

  def get_page_nav
    @page_nav = Page.where('menu_display = true && is_published = true').order(order: :asc)
  end
end
