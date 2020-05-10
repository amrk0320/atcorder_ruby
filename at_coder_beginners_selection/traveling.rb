n = gets.to_i
t = n.times.map {|_| gets.split.map(&:to_i) }
x, y = 0, 0
current_time = 0

def no
  puts "No"
  exit
end

def travel?(time:, step:)
  no if step == 0 && time == 1
  if step <= time && (time - step)%2 == 0
    return 
  else
    no
  end
end

t.each {|plan|
  time = plan[0] - current_time
  x_step = (plan[1] - x).abs
  y_step = (plan[2] - y).abs
  step = x_step + y_step
  if plan[1] == x && plan[2] == y
    step = 0
  end  
  travel?(time: time, step: step)
  current_time = plan[0]
  x = plan[1]
  y = plan[2]
}
puts "Yes"