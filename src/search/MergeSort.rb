def merge(a,b)
  la = a.length()
  lb = b.length()
  c = Array.new(la+lb)       # c.length() = la + lb
  ia = 0
  ib = 0
  ic = 0                     # ic = ia + ib
  while ia < la && ib < lb
    if a[ia] < b[ib]
      c[ic] = a[ia]
      ia = ia + 1
    else
      c[ic] = b[ib]
      ib = ib + 1
    end
    ic = ic + 1
  end
#  if ia == la
    for j in ib..(lb-1)
      c[la+j] = b[j]     # ic = la + j
    end
#  else  # ib == lb
    for j in ia..(la-1)
      c[j+lb] = a[j]     # ic = j + lb
    end
 # end
  c
end

def merge_rec(a,l,r)
  if l == r
    [a[l]]
  else
    m = (l+r)/2
    merge(merge_rec(a,l,m),merge_rec(a,m+1,r))
  end
end

# mergesort_r(a)
# n = a.length() としたとき、計算量は、O(nlogn)。
# 繰り返しで書いたmergesort(a)と、計算量は同じ。
def mergesort_r(a)
  merge_rec(a,0,a.length()-1)
end
