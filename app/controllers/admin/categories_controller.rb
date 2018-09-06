class Admin::CategoriesController < Admin::BaseController
  before_action :set_category, only: [:edit, :update]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    category = Category.new(category_params)
    category.save
    redirect_to admin_categories_path
  end

  def edit

  end

  def update
    @category.update(category_params)
    redirect_to admin_categories_path
  end

  def destroy
    @category = Category.destroy(params[:id])
    redirect_to admin_categories_path
  end

  private
    def category_params
      params.require(:category).permit(:topic)
    end

    def set_category
      @category = Category.find(params[:id])
    end
end