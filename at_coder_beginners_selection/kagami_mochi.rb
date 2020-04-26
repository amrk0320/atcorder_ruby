require 'set'
n = gets.to_i
set = Set.new
d = n.times {|i| set.add(gets.to_i) }
puts set.size