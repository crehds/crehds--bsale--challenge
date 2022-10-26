class ProductsController < ApplicationController
  before_action :set_product, only: :show

  # GET /products
  def index
    @products = Product.all

    render json: @products
  end

  # GET /products/1
  def show
    render json: @product
  end

  def search_by_name
    name1 = params[:name1]
    unless params[:name1].nil?
      @products = Product.where("name Like ?",
                                "#{name1}%").or(Product.where("name Like ?",
                                                              "%#{name1}%"))
    end

    name2 = params[:name2]
    unless params[:name2].nil?
      @products2 = Product.where("name Like ?",
                                 "#{name2}%").or(Product.where("name Like ?",
                                                               "%#{name2}%"))
      @products = [*@products, *@products2]
    end

    name3 = params[:name3]
    unless params[:name3].nil?
      @products3 = Product.where("name Like ?",
                                 "#{name3}%").or(Product.where("name Like ?",
                                                               "%#{name3}%"))
      @products = [*@products, *@products3]
    end

    render json: @products
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # # Only allow a list of trusted parameters through.
  # def product_params
  #   params.require(:product).permit(:name, :url_image, :price, :discount, :category_id)
  # end
end
