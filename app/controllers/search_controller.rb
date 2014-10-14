class SearchController < ApplicationController

  def index
    @search = Recipe.search(params[:search])
      redirect_to search_path(@search)
  end

  def show
    @search = Recipe.search(params[:search])
  end
end
