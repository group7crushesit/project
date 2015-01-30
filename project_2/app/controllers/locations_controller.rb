class LocationsController < ApplicationController

	def index

		render json: get_location


	end


  private
  	 def get_location
  	 	url = ENV["GEOCODER_URL"]
  	 	req_param = { 
  	 					params: {
	   						
	    					latitude: params[:latitude],
							longitude: params[:longitude]
	    				}, 
	    				headers: { 
	    					"X-Mashape-Key" => ENV["GEOCODER_APIKEY"], 
	    					Accept: "application/json" 
	    				}
	    			}
	    res = Typhoeus.get(url, req_param)
	    JSON.parse(res.body)
    end
end
