#!/env/ruby
require 'rss'

rss = RSS::Parser.parse('http://www.ansa.it/sito/ansait_rss.xml', false)
arg=ARGV[0].to_s.downcase.capitalize
rss.items.each do |item|
       	if item.title+item.description =~ /.*#{arg}.*/ 
               	puts "#{$&}"
	end
end
puts arg

