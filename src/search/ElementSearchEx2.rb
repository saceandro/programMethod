# -*- coding: utf-8 -*-
load "pg10.rb"
ff = open("ElementSearchEx2.dat","w") # "God"と"god"の出現箇所すべてをファイルに書き出します

def searchAll(f,t,s)
  f.print s, ": "
  for i in 0..t.length-1
    if t[i]==s
      f.print i," "
    end
  end
  f.print "\n"
end

searchAll(ff,pg10,"God")
ff.print "\n"
searchAll(ff,pg10,"god")
ff.close
