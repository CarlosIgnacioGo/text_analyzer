puts 'Ingresa el texto a analisar'
text = gets.chomp


replacements_words = [ ["uno", "1"],["dos", "2"],["tres", "3"],["cuatro", "4"],["cinto", "1"]]

text.downcase! 

replacements_words.each do |replacement| 
	text.gsub!(replacement[0], replacement[1])
end

def text_valid?(text)
	valid_phone = /(9[6-9][0-9]{7})/.match(text)
	valid_telefone_sg = /([2-9][0-9]{8})/.match(text)
	valid_telefone_cl = /([3-7][1-9][2-9][0-9]{5,6})/.match(text)
	valid_correo = /\S+@\S+\.\S+/.match(text)

	if valid_phone || valid_telefone_sg ||  valid_telefone_cl || valid_correo
		puts 'false'
	else
	  puts 'true'
	end
end

text_valid?(text)

