puts 'Ingresa el texto a analisar'
text = gets.chomp


replacements_words = [ [" ", ""],["uno", "1"],["dos", "2"],["tres", "3"],["cuatro", "4"],["cinco", "5"],["sies", "6"],["siete", "7"],["ocho", "8"],["nueve", "9"]]

text.downcase! 

replacements_words.each do |replacement| 
	text.gsub!(replacement[0], replacement[1])
end

def text_valid?(text)
	valid_phone = /(9[6-9][0-9]{7})/.match(text)
	valid_telefone_sg = /([2-9][0-9]{8})/.match(text)
	valid_telefone_cl = /([3-7][1-9][2-9][0-9]{5,6})/.match(text)
	valid_email = /\S+@\S+\.\S+/.match(text)
	valid_email_for_words = /[Gg]mail|[Hh]otmail/.match(text)

	if valid_phone || valid_telefone_sg ||  valid_telefone_cl || valid_email || valid_email_for_words
		puts 'false'
	else
	  puts 'true'
	end
end

text_valid?(text)

