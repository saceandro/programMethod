# quicksort
#
# swap(a,i,j):
# 配列aのi番目の要素とj番目の要素を入れ替える関数
#
# pivot(a,i,j):
# 配列aのi番目からj番目までの要素のうち、i番目から順に見て、
# 最初に得られた２つの異なる値のうち、大きい方をとってpivot要素とし、
# その要素番号を返す関数である。
# 但し、配列aのi番目からj番目の要素までがすべて等しい場合、-1を返す。
# 計算量O(j-i)
#
# part(a,i,j,s):
# pivot要素の値sをしきい値として、配列aのi番目からj番目に向かってしきい値以上の要素を、
# 配列aのj番目からi番目に向かってしきい値未満の要素を探し、これらの要素を入れ替える。
# これを、双方の検索が交差するまで繰り返す。
# 交差したら、i番目からj番目への検索ラインが最終的に到達した場所(l)を返す。
# このとき、配列aのi番目から(l-1)番目にはs未満の数が、
# l番目からj番目にはs以上の数が集まっている。
# 計算量O(j-i)
#
# sub_quicksort(a,i,j)
# 以上の関数を組み合わせ、配列aのi番目からj番目までを再帰的にソートする。
# i = j 即ち部分配列の要素が１つしかなくなったら、もう並べ替える必要がないので、何もしない。
# i != j ならばpivot要素を求め、
# (-1が返されたら、その部分配列はもう並べ替える必要がないので、何もしない。)
# part(a,i,j,a[pivot(a,i,j)])によって、i~j番目をpivot要素の値との大小で二分し、
# 二分したそれぞれを再帰的にソートする。
#
# quicksort(a)
# sub_quicksort(a,0,a.length())を行い、配列a全体をソートする。
# pivot(a,i,j)とpart(a,i,j,s)はともに計算量O(j-i)、
# つまりデータ数に比例した計算量がかかる。
# 最良の場合、partで、データの分割が効率よく、半分になるように行われれば、
# 再帰の深さはlog(n)/log(2)で、各段階でのデータ数はすべてnだから、
# 計算量はO(nlogn)になる。(最良計算量)
# しかし、配列aが降順に並んでいた場合、計算量は最も大きくなり、
# partでの分割は、1つの要素と、残りの要素に分けるという、最も非効率な分割となってしまう。
# よって、再帰の深さはn、各段階でのデータ数もすべてnだから、
# 計算量は、O(n^2)になる。(最悪計算量)
# データの並びがランダムな場合、平均計算量はO(nlogn)で、mergesortと同じオーダーであるが、
# 一般にはmergesortよりも高速にソートを行うことができる。

def swap(a,i,j)
  v = a[i]
  a[i] = a[j]
  a[j] = v
end

def pivot(a,i,j,m)
  k = i + 1
  while k <= j && a[i][m] == a[k][m]
    k = k + 1
  end
  if k > j
    -1
  else
    if a[i][m] < a[k][m]
      k
    else
      i
    end
  end
end

def part(a,i,j,s,m)
  l = i
  r = j
  while l <= r
    while l <= j && a[l][m] < s
      l = l + 1
    end
    while i <= r && s <= a[r][m]
      r = r - 1
    end
    if l > r
      break
    end
    swap(a,l,r)
    l = l + 1
    r = r - 1
  end
  l
end

def sub_quicksort(a,i,j,m)
  if i != j
    p = pivot(a,i,j,m)
    if p != -1
      l = part(a,i,j,a[p],m)
      sub_quicksort(a,i,l-1,m)
      sub_quicksort(a,l,j,m)
    end
  end
end

def quicksort(a,m)
  sub_quicksort(a,0,a.length()-1,m)
  a
end
