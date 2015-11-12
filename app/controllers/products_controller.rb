class ProductsController < ApplicationController
	def index 
		@products_list = Product.order(created_at: :desc)
		render "index"
	end	
end
