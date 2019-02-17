load "pg10r.rb"

t = pg10r

max_index = 0
for i in 1..t.length-1
  if t[i][1][0] > t[max_index][1][0]
    max_index = i
  end
end

print t[max_index][0],": ",t[max_index][1][0],"\n"
