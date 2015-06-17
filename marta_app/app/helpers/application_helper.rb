module ApplicationHelper
	# In the following method, we parse the data to store it in an array of hashes (each bus a hash). Again, I wouldn't expect you to come up with code all on your own...it was given to me by a wiser coder, and now I hand it down to you, young Rails padowans...
	def fetch_url_data(source)
		http = Net::HTTP.get_response(URI.parse(source))
		data = http.body
		response = JSON.parse(data)
		return response
	end

	def nearby(lng1, lat1, lng2, lat2)
		# This method will compare the lat/longs of the User and each bus, to see if they're close to each other. In this case, "nearby" means within .01 of a degree.
		if (lng1 - lng2).abs <= 0.01 && (lat1 - lat2).abs <= 0.01
			return true
		else
			return false			
		end
	end
end
