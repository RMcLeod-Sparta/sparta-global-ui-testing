require 'spec_helper'

describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumDemoReg.new
    @driver.access_registration_form
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the registration for page' do
      expect(@driver.current_url).to eq 'http://demoqa.com/registration/'
    end

    it 'should accept a first name' do
      @driver.set_first_name_field('Robert')
      expect(@driver.get_first_name_field_value).to eq 'Robert'
      expect(@driver.first_name_field_displayed).to be true
    end

    it 'should accept a last name' do
        @driver.set_last_name_field('McLeod')
        expect(@driver.get_last_name_field_value).to eq 'McLeod'
        expect(@driver.last_name_field_displayed).to be true
    end

    it 'should accept a marital status selection of Single, Married, or Divorced' do
      expect(@driver.select_marital_option('single')).to be true
      expect(@driver.select_marital_option('married')).to be true
      expect(@driver.select_marital_option('divorced')).to be true
    end

    it 'should accept a hobby status selection of Dance, Reading, or Cricket' do
      expect(@driver.select_hobby_option(0)).to be true
      expect(@driver.select_hobby_option(1)).to be true
      expect(@driver.select_hobby_option(2)).to be true
    end

    it 'should have a country default of Afghanistan' do
      expect(@driver.get_selected_country).to eq 'Afghanistan'
    end

    it 'accept a new DOB' do
      @driver.dob_month_list_select(Random.new.rand(1..12))
      @driver.dob_day_list_select(Random.new.rand(1..31))
      @driver.dob_year_list_select(Random.new.rand(1950..2014))
    end

    it 'should accept a new country value' do
      @driver.country_dropdown_list_select('Congo')
    end

    it 'should accept a valid phone number' do
      @driver.set_phone_number_field(Random.new.rand(10000000000..99999999999))
      expect(@driver.get_phone_number_field_value).to be_between(10000000000, 99999999999).inclusive
    end

    it 'should accept a username' do
      pending
    end

    it 'should accept a about yourself text' do
      pending
    end

    it 'should accept a password' do
      pending
    end

    it 'should accept a password confirmation' do
      pending
    end

  end

end
