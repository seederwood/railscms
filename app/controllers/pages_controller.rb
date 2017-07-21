class PagesController < ApplicationController
  def show
    @page = Page.find(params[:id])
    unless @page.is_published
      redirect_to root_path, alert: 'This page does not exist'
    end
    @sections = Section.all
  end
end
