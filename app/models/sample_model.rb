require 'json'
require 'net/http'
 
 def get_gif(search_term)
    request_string="http://api.giphy.com/v1/gifs/random?&tag=#{search_term.gsub(" ","+")+"+drawing"}&rating=g&api_key=dc6zaTOxFJmzC"
    sample_uri=URI(request_string)
    sample_response=Net::HTTP.get(sample_uri)
    sample_parsed_response=JSON.parse(sample_response)
    return sample_parsed_response["data"]["image_url"]
 end