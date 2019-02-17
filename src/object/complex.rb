# -*- coding: utf-8 -*-
class ComplexNumber

  def initialize(x, y)  # ComplexNumber.new(x,y)を実行した時の呼ばれる関数
    @realPart = x       # @をつけた変数はインスタンス変数。newで作られたオブジェクトごとにできる
    @imaginaryPart = y
  end

  def realPart()        # インスタンス変数を読み出すインスタンスメソッド(関数)。x.realPart()のように適用。attr_accessor :realPartを使う方法もある。
    @realPart
  end

  def imaginaryPart()
    @imaginaryPart
  end

  def multiply(z)       # x.multiply(z)のように使い、xとzをかけたものを返すインスタンスメソッド。xやzは変化しない。
    ComplexNumber.new(@realPart * z.realPart - @imaginaryPart * z.imaginaryPart , @realPart * z.imaginaryPart + @imaginaryPart * z.realPart)
  end

  def inv               # x.invのように使い、xの逆数を返すインスタンスメソッド。
    r = rad2.to_f       # 長さの二乗を求めておく。to_fは実数に変換するメソッド。(整数の割り算をしないため）
    ComplexNumber.new(@realPart/r,-@imaginaryPart/r)
  end

  def division(z)       # x.division(z)のように使い、xをzで割ったものを返すインスタンスメソッド。xやzは変化しない。
    multiply(z.inv)
  end

  def add(z)            # x.add(z)のように使い、xにzを足したものを返すインスタンスメソッド。xやzは変化しない。
    ComplexNumber.new(@realPart + z.realPart , @imaginaryPart + z.imaginaryPart)
  end

  def sub(z)            # x.sub(z)のように使い、xからzを引いたものを返すインスタンスメソッド。xやzは変化しない。
    ComplexNumber.new(@realPart - z.realPart , @imaginaryPart - z.imaginaryPart)
  end

  def rad2()            # x.rad2のように使い、xの長さの二乗を計算するインスタンスメソッド
    @realPart * @realPart + @imaginaryPart * @imaginaryPart
  end

include(Math)

  def rad()            # x.radのように使い、xの長さを計算するインスタンスメソッド
    sqrt(rad2)
  end

end

c = ComplexNumber.new(3, 4)
p c.realPart

x1 = ComplexNumber.new(1,2)
x2 = ComplexNumber.new(3,-4)

x3 = x1.multiply(x2)
p x3

x4 = x3.division(x1)
p x4

x5 = x3.division(x2)
p x5

p x1.inv
p x1.inv.multiply(x1)

