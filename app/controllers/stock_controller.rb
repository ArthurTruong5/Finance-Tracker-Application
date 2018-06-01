class StockController < ApplicationController
  def search

  @stock = Stock.new_from_lookup(params[:stock])
  render stock_search_path

  end
end
