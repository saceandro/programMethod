# -*- coding: utf-8 -*-
def stops
  ["渋谷駅","池尻大橋駅","三軒茶屋駅","駒沢大学駅","桜新町駅","用賀駅","二子玉川駅","二子新地駅","高津駅","溝の口駅","梶が谷駅","宮崎台駅","宮前平駅","鷺沼駅","たまプラーザ駅","あざみ野駅","江田駅","市が尾駅","藤が丘駅","青葉台駅","田奈駅","長津田駅","つくし野駅","すずかけ台駅","南町田駅","つきみ野駅","中央林間駅"]
end

def expressStops
  ["渋谷駅","三軒茶屋駅","二子玉川駅","溝の口駅","鷺沼駅","たまプラーザ駅","あざみ野駅","青葉台駅","長津田駅","中央林間駅"]
end

i=1
ie=1
j=0
count=0
le = expressStops.length
a = Array.new(le-1)

while ie<le
  while stops[i]!=expressStops[ie]
    i += 1
    count += 1
  end
  a[j] = count
  i += 1
  ie += 1
  j += 1
  count = 0
end

p a
  
