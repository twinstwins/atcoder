n = gets.to_i
sum = 0

(1..n).to_a.each do |i|
  if i%15 == 0 || i%5 == 0 || i%3 == 0
    next
  else
    sum += i
  end
end

puts sum
