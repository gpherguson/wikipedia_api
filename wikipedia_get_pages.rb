# Wikipedia get pages
# http://www.mediawiki.org/wiki/Manual:Parameters_to_index.php#Actions

require 'uri'
require 'json'
require 'nokogiri'
require 'open-uri'

WIKIPEDIA_URI = 'http://www.mediawiki.org/w/index.php'

uri = URI.parse(WIKIPEDIA_URI)
uri.query = URI.encode_www_form(title: 'Sandbox', action: 'view')
page = open(uri.to_s).read

doc = Nokogiri::HTML(page)
puts doc.title
