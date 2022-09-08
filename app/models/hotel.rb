class Hotel < ActiveRecord::Base
    has_many :customer_reviews
    has_many :reviews
end