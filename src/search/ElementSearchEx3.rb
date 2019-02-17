# -*- coding: utf-8 -*-
load "pg10r.rb"

def find(u,m,s) # uのm番目の要素をキーとして二分探索する関数。
  i = 0
  j = u.length-1
  while i<=j
    k = (i+j)/2
    if u[k][m]==s
      return k
    else
      if u[k][m] < s
        i = k+1
      else
        j = k-1
      end
    end
  end
  return nil
end

ff = open("ElementSearchEx3.dat","w") # "God"と"god"の出現箇所すべてをファイルに書き出します
t = pg10r

i = find(t,0,"God")
if i
  ff.print "God: ", t[i][1]*" "," \n\n"
else
  ff.pring "God: not found\n\n"
end

i = find(t,0,"god")
if i
  ff.print "god: ", t[i][1]*" "," \n"
else
  ff.print "god: not found\n"
end
