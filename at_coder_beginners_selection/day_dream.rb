s = gets.strip
phrase = ["dream", "dreamer", "erase", "eraser"]

def maybe_trim(phrase:, s:)
  return s if s.empty?
  phrase.select{|p| s.include?(p)}.flat_map{|p| s.gsub(p, "")}
end

t = maybe_trim(phrase: phrase, s: s)
  .flat_map{|s| maybe_trim(phrase: phrase, s: s)}
  .flat_map{|s| maybe_trim(phrase: phrase, s: s)}
  .flat_map{|s| maybe_trim(phrase: phrase, s: s)}

if t.find(&:empty?)
  puts "YES" 
else 
  puts "NO" 
end
