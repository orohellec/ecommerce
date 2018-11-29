# require 'net/http'
# require 'uri'
# require 'json'

# Rails.application.credentials.mailjet[:public_key]
# Rails.application.credentials.mailjet[:secret_key]

# class ValidationCommand 

#         def perform  
#         uri = URI.parse("https://api.mailjet.com/v3.1/send")
#         request = Net::HTTP::Post.new(uri)
#         request.basic_auth("public_key", "secret_key")
#         request.content_type = "application/json"
#         request.body = "{
#                 \"Messages\":[
#                         {
#                                 \"From\": {
#                                         \"Email\": \"a.tortai14@gmail.com\",
#                                         \"Name\": \"Me\"
#                                 },
#                                 \"To\":         [
#                                         {
#                                                 \"Email\": \"a.tortai14@gmail.com\",
#                                                 \"Name\": 
#                                         }
#                                 ],
#                                 \"Subject\": \"My first Mailjet Email!\",
#                                 \"TextPart\": \"Greetings from Mailjet.\"
#                         }
#                 ]
#         }"

#         req_options = {
#         use_ssl: uri.scheme == "https",
#         }

#         response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
#         http.request(request)
#         end
#      end 
# end 

