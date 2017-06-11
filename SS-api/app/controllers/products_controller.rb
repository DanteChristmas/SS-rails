class ProductsController < ApplicationController
  before_action :sanitize_product_params, only: [:create, :update]
  before_action :set_product, only: [:show, :update, :destroy]

  def index
    @products = Product.all
    json_response(@products)
  end

  def create
    @product = Product.create!(product_params)
    json_response(@product, :created)
  end

  def show
    json_response(@product)
  end

  def update
    @product.update(product_params)
    head :no_content
  end

  def destroy
    @product.destroy
    head :no_content
  end

  private

  def product_params
    params.permit(:product_type, :status, :name, :description, :price)
  end

  def set_product
    @product = Product.find(params[:id])
  end

  def sanitize_product_params
    params[:product_type] = params[:product_type].to_i
    params[:status] = params[:status].to_i
    params[:available] = params[:available] == "true"
    params[:published] = params[:published] == "true"
  end
end
