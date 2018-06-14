require 'selenium-webdriver'
require 'faker'

class SeleniumQaToolsForm

  def initialize
    @practice_form_url = 'http://toolsqa.com/automation-practice-form'
    @firstname_field = 'firstname'
    @lastname_field = 'lastname'
    @gender_field = 'sex-0'
    @years_field = 'exp-6'
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def visit_practice_form
    @chrome_driver.get(@practice_form_url)

  end

  def input_firstname_field(text)
    @chrome_driver.find_element(:name, @firstname_field).send_keys(text)
  end

  def input_lastname_field(text)
    @chrome_driver.find_element(:name, @lastname_field).send_keys(text)
  end

  def get_firstname_text
    puts @chrome_driver.find_element(:name, @firstname_field)['value']
  end

  def get_lastname_text
    puts @chrome_driver.find_element(:name, @lastname_field)['value']
  end

  def input_gender
    @chrome_driver.find_element(:id, "sex-0").click
  end

  def get_gender
    puts @chrome_driver.find_element(:id, @gender_field)['value']
  end

  def input_years
    @chrome_driver.find_element(:id, "exp-6").click
  end

  def get_years
    puts @chrome_driver.find_element(:id, @years_field)['value']
  end

  def input_date(text)
    @chrome_driver.find_element(:id, 'datepicker').send_keys(text)
  end

  def get_date
    puts @chrome_driver.find_element(:id, 'datepicker')['value']
  end

  def input_profession
    @chrome_driver.find_element(:id, 'profession-1').click
  end

  def get_profession
    puts @chrome_driver.find_element(:id, 'profession-1')['value']
  end

  def insert_profile_picture(img)
    @chrome_driver.find_element(:id, 'photo').send_keys(img)
  end

  def get_profile_picture
    puts @chrome_driver.find_element(:id, 'photo')['value']
  end

  def insert_continents
    @chrome_driver.find_element(:id, 'continents').send_keys('Europe')
  end

  def get_continents
    puts @chrome_driver.find_element(:id, 'continents')['value']
  end

  def insert_command
    @chrome_driver.find_element(:id, 'selenium_commands').send_keys('Switch Commands')
  end

  def get_command
    puts @chrome_driver.find_element(:id, 'selenium_commands')['value']
  end

  def click_button
    @chrome_driver.find_element(:id, 'submit').click
  end

  def get_button
    puts @chrome_driver.find_element(:id, 'submit')['value']
  end

end


testing = SeleniumQaToolsForm.new

testing.visit_practice_form
testing.input_firstname_field("Robertertertertertertert")
testing.get_firstname_text
testing.input_lastname_field("Mcleodeodeodeodeodeodeod")
testing.get_lastname_text
testing.input_gender
testing.get_gender
testing.input_years
testing.get_years
testing.input_date('11-06-1995')
testing.get_date
testing.input_profession
testing.get_profession
testing.insert_profile_picture("/Users/tech-a06/Documents/download.jpeg")
testing.get_profile_picture
testing.insert_continents
testing.get_continents
testing.insert_command
testing.get_command
testing.click_button
testing.get_button
