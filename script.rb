puts 'Ingresa el texto a analisar'
text = gets.chomp


replacements_words = [ [" ", ""]]

text.downcase! 

replacements_words.each do |replacement| 
	text.gsub!(replacement[0], replacement[1])
end

def text_valid?(text)
	if /(9[6-9][0-9]{7})/.match(text)
		puts "true"
	else
		puts "false"
	end
end

text_valid?(text)

