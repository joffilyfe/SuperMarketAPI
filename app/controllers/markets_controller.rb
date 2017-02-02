class MarketsController < ApplicationController

  before_action :set_marker, only: [:show]

  def index
    markets = Market.all
    render json: markets
  end

  def show
    render json: @market
  end

  private

  def set_marker
    begin
      @market = Market.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      render json: {'errors': {'error': 'Not Found'}}.to_json, status: 404
      return
    end
  end
end
