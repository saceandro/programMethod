load "pg10.rb"

def ins(u,s)
  i = 0
  j = u.length-1
  while i<j
    k = (i+j)/2
    if u[k]==s
      return false
    else
      if u[k] < s
        i = k+1
      else
        j = k-1
      end
    end
  end
  if i == j
    if u[i]==s
      return false
    else
      if u[i]<s
        u.insert(i+1,s)
      else
        u.insert(i,s)
      end
    end
  else
    u.insert(i,s)
  end
  true
end

s = pg10
u = []
last = 0
for i in 0..s.length-1
  if ins(u,s[i])
    last = i
  end
end

print s[last], ": ", last, "\n"
