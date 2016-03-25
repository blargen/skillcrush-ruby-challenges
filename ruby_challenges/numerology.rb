def get_birthdate
	puts 'Hello there! Please give me your birthdate in the format of MMDDYYYY!'
	birthdate = gets.chomp
	adding_numbers_for_fun_and_profit(birthdate)
end

def adding_numbers_for_fun_and_profit(birthdate_string)
	birthday_array_surprise = birthdate_string.split('')
	reduced_birthday_string = (birthday_array_surprise.inject{|num, sum| num.to_i + sum.to_i}).to_s
	number_string_checker(reduced_birthday_string)
end

def number_string_checker(reduced_string)
	if reduced_string.length > 1
		adding_numbers_for_fun_and_profit(reduced_string)
	else
		numerology_presentenator(reduced_string)
	end
end

def numerology_presentenator(the_magic_number)
	case the_magic_number
when '1'
	puts 'One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun.'
when '2'
	puts "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
when '3'
	puts "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
when '4'
	puts "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
when '5'
	puts "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
when '6'
	puts "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
when '7'
	puts "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
when '8'
	puts "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
when '9'
	puts "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
else
puts 'I think I may have messed up somewhere. '	
end
end
get_birthdate





