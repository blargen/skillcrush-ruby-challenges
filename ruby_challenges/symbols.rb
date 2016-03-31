worst_brother = {
    :name =>  'Shane the Pain',
    :age => '47',
    :ass_kicker => false,
    :child_name => 'Maxamillion Crunch'

}

best_brother = {
    name: 'Aaron the Baron',
    age: '35',
    ass_kicker: true,
    child_name: 'Eben The Mighty'
}

def brother_tester(brother_hash)
  if brother_hash[:ass_kicker]
    puts "At the age of #{brother_hash[:age]}, #{brother_hash[:name]} is still kicking ass and taking names! His son #{brother_hash[:child_name]} will carry on his legacy and kick ass in his own right!"
  else
    puts "He may not kick ass, but you have to cut him a break because he's #{brother_hash[:age]} years old! Maybe his child #{brother_hash[:child_name]} will be better!"
  end
end

brother_tester(best_brother)
brother_tester(worst_brother)