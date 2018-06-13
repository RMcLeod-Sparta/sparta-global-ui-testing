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
      expect(@driver.set_first_name_field('Robert')).to be_kind_of String
      sleep 2
    end

    it 'should accept a last name' do
      pending
    end

    it 'should accept a marital status selection of Single, Married, or Divorced' do
      pending
    end

    it 'should accept a hobby status selection of Dance, Reading, or Cricket' do
      pending
    end

    it 'should have a country default of Afghanistan' do
      pending
    end

    it 'accept a new DOB' do
      pending
    end

    it 'should accept a new country value' do
      pending
    end

    it 'should accept a valid phone number' do
      pending
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
