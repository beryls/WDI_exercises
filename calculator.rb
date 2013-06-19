def add(a, b)
  a.to_f
  b.to_f
  return a + b
end

def subtract(a, b)
  a.to_f
  b.to_f
  return a - b
end

def multiply(a, b)
  a.to_f
  b.to_f
  return a * b
end

def divide(a, b)
  a.to_f
  b.to_f
  return a / b
end

def power(a, b)
  a.to_f
  b.to_f
  return a ** b
end

def rectangle_area(length, width)
  return multiply(length, width)
end

def triangle_area(base, height)
  return divide(multiply(base, height), 2)
end

def volume_of_rectangular_prism(length, width, height)
  return multiply(rectangle_area(length, width), height)
end

def quadratic_equation(a, b, c)
  discriminant = subtract(power(b, 2), multiply(4, multiply(a, c))) <=> 0
  if discriminant == 1
    return divide(subtract(subtract(0, b), power(subtract(power(b, 2), multiply(4, multiply(a, c))), 0.5)), multiply(2, a)),
      divide(add(subtract(0, b), power(subtract(power(b, 2), multiply(4, multiply(a, c))), 0.5)), multiply(2, a))
  elsif discriminant == 0
    return divide(subtract(0, b), multiply(2, a))
  else
    return "No real values - we're not going imaginary at present."
  end
end

def get_two_numbers
  puts "First:"
  a = gets.chomp.to_f
  puts "Second:"
  b = gets.chomp.to_f
  puts ""
  return a, b
end

def get_three_numbers
  puts "First:"
  a = gets.chomp.to_f
  puts "Second:"
  b = gets.chomp.to_f
  puts "Third:"
  c = gets.chomp.to_f
  puts ""
  return a, b, c
end



def jam

leave = 0

puts "What function do you want to perform?
  (A)dd?
  (S)ubtract?
  (M)ultiply?
  (D)ivide?
  (P)ower?
  (R)ectangle area?
  (T)riangle area?
  (V)olume of a rectangular prism?
  (Q)uadratic equation?

  (E)xit?"

function = gets.chomp.upcase.slice(0,1)

case function
  when "A"
    puts "Add what two numbers?"
    a, b = get_two_numbers
    puts add(a, b)
  when "S"
    puts "Subtract from what (first), and by what (second)?"
    a, b = get_two_numbers
    puts subtract(a, b)
  when "M"
    puts "Multiply what two numbers?"
    a, b = get_two_numbers
    puts multiply(a, b)
  when "D"
    puts "Divide what number (first) by what number (second)?"
    a, b = get_two_numbers
    puts divide(a, b)
  when "P"
    puts "What base number (first) to what power (second)?"
    a, b = get_two_numbers
    puts power(a, b)
  when "R"
    puts "What are the length and width of your rectangle?"
    a, b = get_two_numbers
    puts rectangle_area(a, b)
  when "T"
    puts "What are the base and height of your triangle?"
    a, b = get_two_numbers
    puts triangle_area(a, b)
  when "V"
    puts "What are the length, width, and height of your rectangular prism?"
    a, b, c = get_three_numbers
    puts volume_of_rectangular_prism(a, b, c)
  when "Q"
    puts "Okay, we'll find any roots (i.e., x for ax^2 + bx + c = 0). Give me a, then b, then c."
    a, b, c = get_three_numbers
    puts quadratic_equation(a, b, c)
  when "E"
    done = "exit"
  else
    puts "We don't have that functionality yet.  Try something else."
  end

  unless done == "exit"
    puts ""
    jam
  end

end

jam

