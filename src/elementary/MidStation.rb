# -*- coding: utf-8 -*-
def stops0
  ["渋谷駅","池尻大橋駅","三軒茶屋駅","駒沢大学駅","桜新町駅","用賀駅","二子玉川駅","二子新地駅","高津駅","溝の口駅","梶が谷駅","宮崎台駅","宮前平駅","鷺沼駅","たまプラーザ駅","あざみ野駅","江田駅","市が尾駅","藤が丘駅","青葉台駅","田奈駅","長津田駅","つくし野駅","すずかけ台駅","南町田駅","つきみ野駅","中央林間駅"]
end

def stops1
  ["渋谷駅","表参道駅","青山一丁目駅","永田町駅","半蔵門駅","九段下駅","神保町駅","大手町駅","三越前駅","水天宮前駅","清澄白河駅","住吉駅","錦糸町駅","押上駅"]
end

def stops2
  ["浅草駅","業平橋駅","押上駅","曳舟駅","東向島駅","鐘ヶ淵駅","堀切駅","牛田駅","北千住駅","小菅駅","五反野駅","梅島駅","西新井駅","竹ノ塚駅","谷塚駅","草加駅","松原団地駅","新田駅","蒲生駅","新越谷駅","越谷駅","北越谷駅","大袋駅","せんげん台駅","武里駅","一ノ割駅","春日部駅","北春日部駅","姫宮駅","宮代町","東武動物公園駅"]
end

def stops3
  ["東武動物公園駅","杉戸高野台駅","幸手駅","南栗橋駅"]
end

c = Array.new(4)
count=0
l = 0
k = Array.new(3)
stops0r = stops0.reverse
for i in 0..stops0r.length-1
  for j in 0..stops1.length-1
    if stops0r[i]==stops1[j]
      c[0] = i-l
      count += i-l
      l = j
      k[0] = j
      break
    end
  end
end
for i in l..stops1.length-1
  for j in 0..stops2.length-1
    if stops1[i]==stops2[j]
      c[1] = i-l
      count += i-l
      l = j
      k[1] = j
      break
    end
  end
end
for i in l..stops2.length-1
  for j in 0..stops3.length-1
    if stops2[i]==stops3[j]
      c[2] = i-l
      count += i-l
      l = j
      k[2] = j
      break
    end
  end
end
c[3] = stops3.length-1 - l
count += c[3]
p c
p count

m = count/2
if m<=c[0]
  print stops0r[m],"\n"
elsif m<=c[0]+c[1]
  print stops1[m - c[0]- k[0]],"\n"
elsif  m<=c[0]+c[1]+c[2]
  print stops2[m - c[0]- c[1]- k[1]],"\n"
else
  print stops3[m - c[0] - c[1] - c[2] - k[2]],"\n"
end
