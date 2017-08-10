class PagesController < ApplicationController
  def home
    
  end
  
  def about
    
  end
  
  def new 
    
    @page = Page.new
     
  end
  def create
    #render plain: params[:page].inspect
    @page = Page.new(page_params)
    if @page.save
      flash[:notice] = "Article was Sucessfuly Created "
      redirect_to page_path(@page)
    else
      render 'new'
    end
    #@page.save
    #
  end
  
  def show
    @page =  Page.find(params[:id])
  end
  private 
  def page_params
    params.require(:page).permit(:title , :description)
  end
end