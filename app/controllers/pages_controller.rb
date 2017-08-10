class PagesController < ApplicationController
  def home
    
  end
  
  def about
    
  end
  
  def new 
    
    @pages = Page.new
     
  end
  def create
    #render plain: params[:page].inspect
    @page = Page.new(page_prams)
    @page.save
    redirect_to pages_show(@page)
  end
  
  def show
    
  end
  private 
  def page_prams
    params.require(:page).permit(:title , :description)
  end
end