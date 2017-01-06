puts 'Ingresa el texto a analisar'
text = gets.chomp


replacements_words = [ [" ", ""]]

text.downcase! 

replacements_words.each do |replacement| 
	text.gsub!(replacement[0], replacement[1])
end

def text_valid?(text)
	if /(9[6-9][0-9]{7})/.match(text) || /([2-9][0-9]{8})/.match(text) || /([3-7][1-9][2-9][0-9]{5,6})/.match(text) || /\S+@\S+\.\S+/.match(text)
		puts 'false'
	else
	  puts 'true'
	end
end

text_valid?(text)

