class Dog
  attr_accessor :name, :owner_name
end

class Breed < Dog
  attr_accessor :breed, :snorting
  def dog_facts
    return "#{@name} is a #{@breed} who is friends with #{owner_name}, and is known to say #{@snorting}!"
  end
end
my_dog = Breed.new
my_dog.name = 'Ogre'
my_dog.breed = 'Frenchie'
my_dog.snorting = (true)
my_dog.owner_name = 'Eben Brinson Smith, III'
puts my_dog.dog_facts