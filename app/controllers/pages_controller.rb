class PagesController < ApplicationController
  before_action :set_page , only: [:edit, :update, :destroy, :show]
  def home
    
  end
  
  def about
  
    
  end
  
  def index
    @page = Page.all
  end
  
  def new 
    
    @page = Page.new
     
  end
  def edit
    
    
    
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
    
    if @page.update(page_params)
      flash[:notice] = "Article was Sucessfuly updated"
      redirect_to page_path(@page)
    else
      render 'edit'
    end
  end
  
  def show
    
    
    
  end
  
  def destroy
    
   
   @page.destroy
   flash[:notice] = "Article Wass Successfully Deleted"
   redirect_to pages_path
   
  end
  
  private 
    def set_page
      @page =  Page.find(params[:id])
    end
    def page_params
      params.require(:page).permit(:title , :description)
    end
  
  
end