require 'pry'

# # hole 1: sum an array
# def sum(x,y)
#   return x + y
# end
# # count 17
# puts sum(1,2)

# # hole 2: rock paper scissors
# def rps(n)
#   c = [1,2,3].sample
#   if c == n 
#     puts "w"
#   else
#     puts "L"
#   end
# end
# # count 37 
# puts rps(1) #where 1 = rock, 2 = paper, 3 = scissors

# hole 3: FizzBuzz
# def fizzBuzz
#   (1..100).each do |x|
#     a = []
#     a << "FizzBuzz" if x % 15 == 0 
#     a << "Fizz" if x % 3 == 0 
#     a << "Buzz" if x % 5 == 0
#     a << x
#     puts a
#   end
# end 
# # count 83
# puts fizzBuzz

# hole 4: Multiples up to a given value

# def multi(x,y)
#   (1..y).each do |i|
#     a = []
#     a << i if i % x == 0
#     puts a
#   end  
# end
# # count 44
# puts multi(5,20) 

# hole 5: Caesar Cipher
# def cipher(x,s)
#   l = s.downcase.gsub(" ", "").split("")
#   e = []
#   a = ("a".."z").to_a
#     l.each do |v|
#       e << a.find_index(v)
#     end
#   b = a.shift(x)
#   a << b
#   key = a.flatten
#   u = []
#     e.each do |v|
#       u << key.at(v)
#     end
#   final = u.join
#   puts final
# end

# puts cipher(2, "Test this")

# # hole 6: string counter
# def counter(str, val)
#   puts str.scan(val).size
# end
# puts counter("this is his house", "is")

# # hole 7: pair array shuffler
# def shuffler(arr)
#   arr.flatten.shuffle.each_slice(2).to_a
# end

# print shuffler([[1,2],[3,4],[5,6],[7,8],[9,0]])

# # hole 8
def love(st1, st2)
  empty = []
  matching = st1.gsub(" ","").split("") + st2.gsub(" ","").split("")
  empty << st1.gsub(" ","").split("").uniq
  empty << st2.gsub(" ","").split("").uniq
  try = empty.flatten.group_by(&:itself).map { |i, e| [i, e.count]}.to_h
  try1 = try.keep_if{ |key, value| value > 1}
  print (matching.length/try1.length)
  binding.pry
end

love("I love this code", "This code loves me")

#total in common
#divide total char by num in commonemptempt