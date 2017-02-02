class ProductsController < ApplicationController

  before_action :set_product, only: [:show]

  def index
    products = Product.all
    render json: products
  end

  def show
    render json: @product
  end

  private

  def set_product
    begin
      @product = Product.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      product = Product.new
      product.errors.add(:id, 'Not found')
      render_error(product, 404) and return
    end
  end
end
