require 'faker'

FactoryGirl.define do
	factory :house do
    sequence :title do |n|
      "Hacker House #{n}"
    end
    address     { Faker::Address.street_address }
    description { Faker::Lorem.paragraph }
    maps_link 	{ Faker::Internet.url }
		rooms 			{ rand(0..4) }
		beds 				{ rand(1..6) }
		bathrooms   { rand(1..4) }
		capacity 		{ rand(1..12) }
		total_cost 	{ rand(200..15_000) }
    image { File.open(File.join(Rails.root, '/spec/factories/images/house.jpg')) }

		factory :invalid_house do
			title 			nil
			address 		nil
		end
	end
end
