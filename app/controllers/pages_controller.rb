class PagesController < ApplicationController
  
  def index
    @page = Page.all
  end
  
  def new 
    
    @page = Page.new
     
  end
  def edit
    
    @page = Page.find(params[:id])
    
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
  
  def update
    @page =  Page.find(params[:id])
    if @page.update(page_params)
      flash[:notice] = "Article was Sucessfuly updated"
      redirect_to page_path(@page)
    else
      render 'edit'
    end
  end
  
  def show
    @page =  Page.find(params[:id])
  end
  private 
  def page_params
    params.require(:page).permit(:title , :description)
  end
end