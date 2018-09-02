class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.save
    redirect_to categories_path
  end

  def destroy
    @category = Category.destroy(params[:id])
    redirect_to categories_path
  end

  private
    def category_params
      params.require(:category).permit(:topic)
    end
end