require "rubygems"
require "watir-webdriver"
require "rspec"

class BaiduPage
  def initialize
    @browser = Watir::Browser.new :chrome
    @browser.goto("www.baidu.com")
  end

  def search str
    @browser.text_field(:name => "q").set(str)
    @browser.button(:name => "btnK").click
  end

  def has_text text
    @browser.text.should include(text)
  end
end