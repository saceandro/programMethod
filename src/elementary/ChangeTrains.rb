# -*- coding: utf-8 -*-
def ooimachiStops
  ["大井町駅","下神明駅","戸越公園駅","中延駅","荏原町駅","旗の台駅","北千束駅","大岡山駅","緑が丘駅","自由が丘駅","九品仏駅","尾山台駅","等々力駅","上野毛駅","二子玉川駅","溝の口駅"]
end

def denentoshiStops
  ["渋谷駅","池尻大橋駅","三軒茶屋駅","駒沢大学駅","桜新町駅","用賀駅","二子玉川駅","二子新地駅","高津駅","溝の口駅","梶が谷駅","宮崎台駅","宮前平駅","鷺沼駅","たまプラーザ駅","あざみ野駅","江田駅","市が尾駅","藤が丘駅","青葉台駅","田奈駅","長津田駅","つくし野駅","すずかけ台駅","南町田駅","つきみ野駅","中央林間駅"]
end

def expressStops
  ["渋谷駅","三軒茶屋駅","二子玉川駅","溝の口駅","鷺沼駅","たまプラーザ駅","あざみ野駅","青葉台駅","長津田駅","中央林間駅"]
end

for i in 0..ooimachiStops.length-1
  for j in 0..denentoshiStops.length-1
    if ooimachiStops[i]==denentoshiStops[j]
      k = i
      l = j
      break
    end
  end
end

t = ooimachiStops[0..k] + denentoshiStops[l+1..denentoshiStops.length-1]

print t*",","\n"
