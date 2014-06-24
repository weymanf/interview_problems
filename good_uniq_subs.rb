#really good uniq subs solution

def uniq_subs(str)
  subs = {}

  str.length.times do |i|
    (i...str.length).each do |j|
      subs[str[i..j]] = true
    end
  end

  subs.keys
end