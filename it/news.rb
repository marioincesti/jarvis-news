#!/env/ruby
require 'rss'

rss = RSS::Parser.parse('http://www.ansa.it/sito/ansait_rss.xml', false)
arg=ARGV[0].to_s.downcase.capitalize
rss.items.each do |item|
       	if arg.length<1 
        	puts "#{item.title}.\t#{item.description}.\n"
	elsif item.title+".\t"+item.description+".\t" =~ /.*#{arg}.*/
		puts "#{$&}\n"
	end
end


