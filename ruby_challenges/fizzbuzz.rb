def fizz_buzz
   (1..100).each do |da_numba|
   	   if da_numba % 15 == 0
   	   	puts 'FizzBuzz!'
   	   elsif da_numba % 5 == 0
   	   	puts 'Buzz!'
   	   elsif da_numba % 3 == 0
   	   	puts 'Fizz!'
   	   else
   	   	puts da_numba
   	   end
   end
end
