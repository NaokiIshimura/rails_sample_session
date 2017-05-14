require 'selenium-webdriver'

def test1(driver)
  driver.get('http://localhost:3000')
  sleep 5
  text = driver.find_element(:xpath, '/html/body/a').click
  sleep 5
  driver.quit
end


def test2(driver)
  driver.get('http://localhost:3000')
  sleep 5
  text = driver.find_element(:xpath, '/html/body/a').click

end

# ブラウザ1の起動→終了→ブラウザ2の起動→終了
test1(Selenium::WebDriver.for :chrome)
test1(Selenium::WebDriver.for :chrome)

# ブラウザ1の起動→ブラウザ2の起動→ブラウザ1~2終了
test2(Selenium::WebDriver.for :chrome)
test2(Selenium::WebDriver.for :chrome)

sleep 5