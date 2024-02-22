def get_pass(what)
   print "Enter your #{what}: "
   gets.chomp.length.times do
     print "*"
   end
   print "\n"
end
 
age = get_number('password')