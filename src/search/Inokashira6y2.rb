# -*- coding: utf-8 -*-

def stops
  ["渋谷","神泉","東大前","駒場","池ノ上","下北沢"]
end

def swap(u,i,k) # 配列中のi番目とk番目のデータの入れ替え
  tmp = u[i]
  u[i] = u[k]
  u[k] = tmp
end

def sort(u,m) # uのm番目の要素をキーとしてソートする関数。とりあえずここでは単純ソート。
  for i in 0..u.length-2
    k = i
    for j in i+1..u.length-1
      if u[j][m] < u[k][m] # m番目が比較対象のキー
        k = j
      end
    end
    swap(u,i,k)
  end
  return u
end

def genIndex(t) # 索引を作る
  u = Array.new
  for i in 0..t.length-1
    u[i] = [t[i],i] # [ ..., ["東大前",2], ... ]のようにキーと元の位置をペアにしておく。
  end
  return sort(u,0) # 0番目をキーとしてソートする
end

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

t = genIndex(stops) # 位置の情報もつけてソートする
for i in 0..t.length-1
  print t[i][0],",",t[i][1],"\n" # データを表示
end
i = find(t,0,"東大前") # 0番目をキーとして検索
p t[i][1] # 元の位置を表示
