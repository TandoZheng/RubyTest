#!/usr/bin/ruby 
#!encoding UTF-8


class Box
  
  def initialize(w,h)
    @width,@height = w,h
  end
  
  def getWidth
    @width
  end
  
  def getHeight
    @height
  end
  
  def getArea
    @area = getWidth() * getHeight()
    puts "Bix box area is :#{@area}"
  end
  
  private :getWidth,:getHeight
  public :getArea
  
end

box =  Box.new(10,30)
String s = "i am tando."

#大写
puts s.upcase()
puts s.downcase()

#String分段
puts s.split(" ")[0]

#String替换
puts s.gsub("a","#")

#调用
box.getArea()

#字符串插值
puts "the String is #{s}！"

#循环固定次数
i = 0
5.times do
  puts "#{i}hello world"
  i = i+1
end

a = ["zhengwei","abc","sunyingchun"]
puts a

puts a.sort()










