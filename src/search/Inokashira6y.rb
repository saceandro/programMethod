# -*- coding: utf-8 -*-
load"Inokashira6.rb"

def find(t,s) # sがtの何番目かを探す
  i = 0 # 下限
  j = t.length-1 # 上限
  while i<=j # 間があいていたら、
    k = (i+j)/2 # 中間をとり
    if t[k]==s # sと一致したら
      return k # その添字を返す
    else
      if t[k] < s # 中間より大きければ、
        i = k+1 # 下限を引き上げ、
      else # 中間より小さければ
        j = k-1 # 上限を引き下げる。
      end
    end
  end
  return nil # 見つからない
end

t = stops.sort # Rubyの機能でソートしてしまう。
print t*",","\n"
p find(t,"東大前") # ソートされているので元の位置と違う結果
