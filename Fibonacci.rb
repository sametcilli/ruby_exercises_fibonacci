def fibs(n)
  s = [];
  (n+1).times do |t|
    if t <= 1
      s << t
    else 
      s << s[t-1] + s[t-2]
    end
  end
  s.last
end

def fibs_rec(n)
  n = n > 1 ? (fibs_rec(n-1); n = fibs_rec(n-2) + fibs_rec(n-1)) : (n)
end

p fibs(6)

p fibs_rec(6)
