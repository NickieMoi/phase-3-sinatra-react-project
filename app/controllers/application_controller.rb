class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  #hotel routes get method

  get "/hotels" do
    hotels = Hotel.all
    hotels.to_json
  end
  #post routes for hotels method
  post "/hotels" do
    reserved = Hotel.create(
      name: params[:name],
      location: params[:location],
      price: params[:price]
    )
    reserved.to_json
  end
  #patch or put routes method
  patch "/hotels/:id" do
    hotel = Hotel.find(params[:id])
    hotel.update(
      name: params[:name],
      price: params[:price]
    )
    hotel.to_json
  end
  #delete routes for hotel method
  delete "/hotels/:id" do
    hotel = Hotel.find(params[:id])
    hotel.destroy
    hotel.to_json
  end
  #customers_reviews routes.
  #get method.
  get "/customer_reviews" do
    reviews = CustomerReview.all
    reviews.to_json
  end
  #post method
  post "/customer_reviews" do
    new_review = CustomerReview.create(
      comment: params[:comment]
    )
    new_review.to_json
  end
  #patch method
  patch "/customer_reviews/:id" do
    reviews = CustomerReview.find(params[:id])
    reviews.update(
      comment: params[:comment]
    )
    reviews.to_json
  end
#delete method
delete "/customer_reviews/:id" do
  reviews = CustomerReview.find(params[:id])
  reviews.destroy
  reviews.to_json
end
end
