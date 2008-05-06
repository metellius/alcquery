
require 'net/http'
require 'net/https'

def alcquery input
  
  http = Net::HTTP.new("eow.alc.co.jp", 80)
  
  # GET request -> so the host can set his cookies
  resp, data = http.get("http://eow.alc.co.jp/#{input}/UTF-8/?pg=1", nil)
  cookie = resp
  
  matches = data.scan(/<li>(.*?class="midashi">.*?)<\/li>/m)
  cleanmatches = []

  matches.each do |el|
	 cleanmatches.push(cleantags(el[0]))
  end
  
  return cleanmatches
end

def cleantags input
  return input.gsub(/<\/?.+?>/, "")
end
