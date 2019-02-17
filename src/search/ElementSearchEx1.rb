load "pg10.rb"

def search1(t,s)
  i=0
  while i<t.length && t[i]!=s
    i += 1
  end
  if i<t.length
    print s, ": ", i, "\n"
  else
    print s, ": not found\n"
  end
end

search1(pg10,"God")
search1(pg10,"god")
