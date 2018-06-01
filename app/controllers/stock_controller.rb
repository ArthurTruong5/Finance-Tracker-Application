class StockController < ApplicationController
  def search
    if params[:stock].present?
  @stock = Stock.new_from_lookup(params[:stock])
if @stock
  render stock_search_path
else
  flash[:danger] = "Search is invald, please enter the correct symbol"
  redirect_to my_portfolio_path
end

else
  flash[:danger] = "Search is invalid, please enter the correct string."
  redirect_to my_portfolio_path
  end
end
end
