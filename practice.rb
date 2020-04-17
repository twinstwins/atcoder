# # n = gets.to_i
# # arr = []
# # cnt = 0
# # n.times do
# #   arr << gets.to_i
# # end
# #
# # x = 1
# # y = 1
# #
# # while x != 2
# #   x = arr[x-1]
# #   cnt += 1
# #   if x == arr[x-1].to_i
# #     puts "-1"
# #     exit
# #   end
# # end
#
# puts cnt

# while true
#   h,w = gets.split.map(&:to_i)
#   if h == 0 && w == 0 then break end
#     arr = []
#   w.times  do |i|
#     if i == 0 || i.even?
#       arr << "#"
#     else
#       arr << "."
#     end
#   end
#    arr2 = arr.map{|x| x=="#" ? "." : "#"}.join
#    arr = arr.join
#   h.times do |i|
#     if i == 0 || i.even?
#       puts arr
#     else
#       puts arr2
#     end
#   end
#     puts "\n"
# end

#a,b,c = gets.split.map(&:to_i)
#
# n,m = gets.split.map(&:to_i)
# a_vec = []
# n.times do
#   a_vec << gets.split.map(&:to_i)
# end
#
# b_vec =[]
# m.times do
#   b_vec << gets.to_i
# end
#
# a_vec.each do |v|
#   sum = 0
#   m.times do |i|
#     sum += (v[i] * b_vec[i])
#   end
#   puts sum
# end

# a,b,c,x,y = gets.split.map(&:to_i)
# ans = []
# (0..10).each do |i|
#   ans << i*2*c + [0,(x-i)].max*a + [0,(y-i)].max*b
# end
#
# p ans
# puts ans.min
#
#
#
def digits(x)
    x.to_s.length
end

n = gets.to_i
ans = digits(n)

# a<=√Nまでで良い理由は、
# AとBの間に暗黙の大小関係として A≤Bが成立しているから

(2..Math.sqrt(n).ceil).each do |a|
    next if n % a != 0
    b = n/a
    t = [digits(a),digits(b)].max
    ans = t if t < ans
end
puts ans
