class ProductPriceController < ApplicationController
  def index
    product_markets = ProductMarket.all
    render json: product_markets
  end

  def show
    product_markets = ProductMarket.where(product_id: params[:id])
    render json: product_markets
  end
end
