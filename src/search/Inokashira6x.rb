# -*- coding: utf-8 -*-
load"Inokashira6.rb"

def find(t,s)
  i = 0
  while i < t.length && t[i] != s
    i += 1
  end
  return i
end

p find(stops,"東大前")

