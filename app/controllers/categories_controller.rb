class CategoriesController < ApplicationController
  before_action :set_category, only: %i[show products_by_category]

  # GET /categories
  def index
    @categories = Category.all

    render json: @categories
  end

  # GET /categories/1
  def show
    render json: @category
  end

  def products_by_category
    # * Logic accordding to category names
    title = @category.name.split.last
    @products = Product.where("name LIKE ?", "#{title}%")
    render json: @products
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_category
    @category = Category.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def category_params
    params.require(:category).permit(:name)
  end
end
