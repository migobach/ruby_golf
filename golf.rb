require 'pry'

# hole 1: sum an array
def sum(x,y)
  return x + y
end

puts sum(1,2)

# hole 2: rock paper scissors
def rps(n)
  c = [1,2,3].sample
  if c == n 
    puts "w"
  else
    puts "L"
  end
end
puts rps(1) #where 1 = rock, 2 = paper, 3 = scissors

# hole 3: FizzBuzz
def fizzBuzz
  (1..100).each do |x|
    a = []
    a << "FizzBuzz" if x % 15 == 0 
    a << "Fizz" if x % 3 == 0 
    a << "Buzz" if x % 5 == 0
    a << x
    puts a
  end
end 
puts fizzBuzz

# hole 4: Multiples up to a given value
def multi(x,y)
  (1..y).each do |i|
    a = []
    a << i if i % x == 0
    puts a
  end  
end
puts multi(5,20) 

# hole 5: Caesar Cipher
def cipher(x,s)
  l = s.downcase.gsub(" ", "").split("")
  e = []
  a = ("a".."z").to_a
    l.each do |v|
      e << a.find_index(v)
    end
  b = a.shift(x)
  a << b
  key = a.flatten
  u = []
    e.each do |v|
      u << key.at(v)
    end
  final = u.join
  puts final
end

puts cipher(2, "Test this")

# hole 6: string counter
def counter(s, v)
  puts s.scan(v).size
end
puts counter("this is his house", "is")

# hole 7: pair array shuffler
def shuffler(a)
  a.flatten.shuffle.each_slice(2).to_a
end

print shuffler([[1,2],[3,4],[5,6],[7,8],[9,0]])

# hole 8
def love(st1, st2)
  e = []
  m = st1.gsub(" ","").split("") + st2.gsub(" ","").split("")
  e << st1.gsub(" ","").split("").uniq
  e << st2.gsub(" ","").split("").uniq
  try = e.flatten.group_by(&:itself).map { |i, e| [i, e.count]}.to_h
  try1 = try.keep_if{ |key, v| v > 1}
  print (m.length/try1.length)
  binding.pry
end

love("I love this code", "This code loves me")

#total in common
#divide total char by num in commonemptempt

#shopping list

  def shoppingList
    a = []
    x = 1
    y = 1
    puts "insert an item"
    5.times do
      a << gets.strip.upcase
      
    end
    b = a.sort.uniq

    5.times do 
      
      b.insert(x,y)
      x += 2
      y += 1
      # binding.pry
    end
    h=Hash[*b.flatten(1)]
    puts h
  end
  shoppingList