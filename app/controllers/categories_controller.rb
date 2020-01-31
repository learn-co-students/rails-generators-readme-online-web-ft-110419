class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
  end

  def most_popular
    @post =Category.most_popular
    erb :show
  end
end
