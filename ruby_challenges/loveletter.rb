def get_name
  puts 'Hello! I would love to tell you about my love affair with Skillcrush, can I have your name please?'
  name = gets.chomp
  puts "Oh, #{name}, how many comparisons must I give to convince you of my love?(between 1-5)"
end

def ask_question
  love_number = gets.chomp.to_i
  if love_number < 1 or love_number > 5
    puts "Don't play games with my heart! It must be between 1-5!"
    ask_question
  else
    return love_number
  end

end

def like_a_simile_setter
  like_a_simile_hash ={
      :first_part_of_simile  => ['a chubby bumblebee',
                                'a redhead',
                                'a French Bulldog',
                                'a person with a degree in English',
                                'Bernie Sanders'
      ],
      :second_part_of_simile => ['flowers right next door to the hive',
                                'a pool party with a well shaded pool',
                                'to snort with wild abandon whilst running back and forth on the couch',
                                'to expound upon less and fewer while waiting in line at the grocery store',
                                'to say "YUGE"'
      ]
  }

end


def love_letter_combinator
  i = 0
  simihash = like_a_simile_setter
  get_name
  number_of_proofs_necessary = ask_question
  while i < number_of_proofs_necessary
    puts "My love for Skillcrush is like #{simihash[:first_part_of_simile][i]} loves #{simihash[:second_part_of_simile][i]}!"
    i += 1
  end

end

love_letter_combinator