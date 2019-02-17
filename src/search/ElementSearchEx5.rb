load "pg10r.rb"
load "QuickSort.rb"

t = pg10r
for i in 0..t.length-1
  t[i][1] = t[i][1].length
end

s = t.sort{ |a,b| a[1] <=> b[1]}

k=0
while s[k][1]<1000
  k += 1
end
for i in k..s.length-1
  print s[i][0], ": ", s[i][1], "\n"
end
