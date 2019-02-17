def f(i)
  if i
    true
  else
    false
  end
end

include(Math)
p f(0)
p f(1)
p f(2)
p f(-1)
p f(3.12)
p f(PI)
p f("abABaCa")
p f(true)
p f(false)
p f(nil)
