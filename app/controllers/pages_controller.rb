class PagesController < ApplicationController
  def index
    #return array of pages
    @pages = Page.all
    #render index.html.erb
  end

  def show
    #returns a single page with a certain id
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
    #creates noly in memory
  end

  def edit
  end

  def create
    @page =Page.new(pages_params)
    if @page.save
      redirect_to pages_path
    else
      render :new
    end
  end

  def update
  end

  def destory
  end

  private
    def pages_params
      {page: {title: 'post', author: 'you', body: 'asfeafae'}}
      params.require(:page).permit(:title, :author, :body)
    end


end
