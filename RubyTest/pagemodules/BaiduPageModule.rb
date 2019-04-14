# encoding: utf-8
require "watir"
require "rubygems"
require "watir-webdriver"
require "rspec"

module BaiduPageModule
  
  def open_baidu
    @page  = BaiduPage.new(@browser)
  end
  
  def search_str
    @page.search str
  end
  
  def assert_text text
    @page.has_text text
  end
end