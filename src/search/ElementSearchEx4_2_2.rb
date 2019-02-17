load "pg10.rb"

def search(s,a)
  i=0
  while i<s.length && a!=s[i]
    i += 1
  end
  i == s.length
end

t = pg10
s = []
last = 0
for i in 0..t.length-1
  if search(s,t[i])
    last = i
    s << t[i]
  end
end

print t[last], ": ", last, "\n"
    
