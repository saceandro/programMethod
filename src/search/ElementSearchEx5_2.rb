load "pg10r.rb"

def find(u,m,s) # uのm番目の要素をキーとして二分探索する関数
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
  return i  # 一致するものがなかったら、一つだけ大きいインデックスを返す
            # (whileループを抜けるときには、iが、探したいキーのインデックス
            # よりも一つだけおおきなインデックスとなっている)
end

t = pg10r
for i in 0..t.length-1
  t[i][1] = t[i][1].length
end

s = t.sort{ |a,b| a[1] <=> b[1] }

k = find(s,1,1000)
 
for i in k..s.length-1
  print s[i][0], ": ", s[i][1], "\n"
end
