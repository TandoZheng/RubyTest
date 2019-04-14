require "watir"

#使用chrome浏览器打开粉笔网

ie = Watir::Browser.new :chrome

ie.goto "www.baidu.com"

puts "成功了！"