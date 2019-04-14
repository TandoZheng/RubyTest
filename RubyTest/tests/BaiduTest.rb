require 'test/unit'
require 'watir'

class GoogleHomePage < Test::Unit::TestCase
  def test_Google
    #browser = Watir::IE.start "http://www.google.com"
    #assert(browser.text.include?("google.com.hk"))
    print "test case1 running\n"
    assert true
  end

 

   def test_Baidu

    #browser = Watir::IE.start "http://www.baidu.com"
    #assert(browser.text.include?("百度"))
    print "test case1 running\n"
    assert false
  end
end