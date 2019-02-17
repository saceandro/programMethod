# -*- coding: utf-8 -*-
def stops
  ["渋谷","神泉","東大前","駒場","池ノ上","下北沢"]
end
t = stops

f = Hash.new # ハッシュを生成
for i in 0..t.length-1
  f[t[i]] = i # f["東大前"]=2となるように記録。(関数の定義)
end
p f["東大前"]
