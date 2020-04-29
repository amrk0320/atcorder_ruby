
def five_bills_and_one_bills_usage(balance:, bills:)
  return [true, 0, 0] if balance.zero? && bills.zero?

  (0..bills).to_a.reverse_each do |i|
    y, z = i, 0
    last_balance = balance - y*5000 
    just = just_one_bills?(balance:last_balance , bills: bills - y)
    if just
      z = bills - y
      return [true, y, z]
    end
  end
  [false, -1, -1]
end

def just_one_bills?(balance:, bills:)
  balance/1000 == bills && balance%1000 == 0
end

def just_exit(result:)
  puts result 
  exit
end

l = gets
a = l.split.map(&:to_i)
N = a[0]
Y = a[1]

(0..N).to_a.reverse_each do |i|
  x = i
  balance = Y - x*10000
  bills = N - x
  just, y, z = five_bills_and_one_bills_usage(balance: balance, bills: bills)
  if just
    result = "#{x} #{y} #{z}"
    just_exit(result: result) 
  end
end
puts '-1 -1 -1'