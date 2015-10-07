class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def upvote
    @product = Product.find(params[:id])
    if current_user.voted_for? @product
      current_user.unvote_for @product
    else
      current_user.up_votes @product
    end

    respond_to do |format|
      format.json { render '_product', locals: {product: @product} }
    end
  end
end
