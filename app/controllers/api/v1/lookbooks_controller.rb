class Api::V1::LookbooksController < ApplicationController

	def create
		@lookbook = Lookbook.new(user_id: params[:user_id], template_id: params[:template_id], brand_name: params[:brand_name], collection_name: params[:collection_name] )
		if @lookbook.save
			render json: {saved: true, lookbookId: @lookbook.id}
		end
		params[:products].each do |product|
			Product.create(name: product["name"], lookbook_id: @lookbook.id, image_url: product["imageURL"], description: product["description"], product_url: product["URL"])
		end

	end

	def show
		lookbook = Lookbook.find(params[:id])
		products = lookbook.products.map{ |product| {name: product.name, URL: product.product_url, imageURL: product.image_url, description: product.description}}
		render json: {templateId: lookbook.template_id, userInput: {brandName: lookbook.brand_name, collectionName: lookbook.collection_name, id: lookbook.id, products: products}}
	end

end