# encoding: utf-8
require "watir"
require "rubygems"
require "watir-webdriver"
require "rspec"
require "test/unit"

class UI

  @browser = nil
  #launch a driver
  def UI
    @browser = Watir::Browser.new :chrome
  end

  #open a url
  def open_url(url)
    @browser.goto(url)
  end

  #get url value
  def get_url_value
    @browser.url()
  end

  #get title
  def get_title
    @browser.title()
  end

  #if contains text
  def contains_text(value)
    assert_exists(@browser.contains_text(value))
  end
  
  #element click
  def click(element)
    element.click
  end

  #element clear
  def clear(element)
    element.clear
  end
  
  #get the text of the element
  def get_text(element)
    element.text
  end
  
  #get tag name of the element
  def get_tag_name(element)
    element.tag_name
  end
  
  #get attribute value of element
  def attribute_value(element,attribute_name)
    element.attribute_value(element,attribute_name)
  end

  #get value of the element
  def get_value(element)
    element.value
  end
  
  #element field send keys
  def send_keys(element,value)
    element.send_keys(value)
  end

  #element set value
  def set_value(element,value)
    element.set(value)
  end

  #Returns true if this element is present and enabled on the page.
  def element_enabled
    assert_enabled(element.enabled?("failed"))
  end
  
  #Returns true if this element is present and enabled on the page.
  def element_visible
    assert_exists(element.visible?("failed"))
  end
  
  #close
  def close
    @browser.close()
  end

  #back
  def back
    @browser.back()
  end

  #forward
  def forward
    @browser.forward()
  end

  #refresh
  def refresh
    @browser.refresh()
  end
  
  #reset
  def reset
   @browser.reset!()
  end

  #wait
  def wait(seconds)
    @browser.wait(seconds)
  end
  
  #get status
  def get_status
    @browser.status()
  end
  
  #verify exist
  def if_exist
    @browser.exist?()
  end
  
  # execute java script
  def execute_java_script(script, args)
    @browser.execute_script(script,args)
  end
  
  #
  def assert_if_exist
    @browser.assert_exists()
  end
  
end

