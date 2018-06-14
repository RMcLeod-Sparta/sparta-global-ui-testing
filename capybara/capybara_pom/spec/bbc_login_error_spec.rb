require 'spec_helper'

describe 'Inncorrect user details produces valid error' do

  context 'It should respond with the correct error when incorrect deatils are input' do

    it 'should produce an error when inputting an incorrect password to a valid account' do
      @bbc_site = BbcSite.new

      @bbc_site.bbc_home_page.visit_home_page

      @bbc_site.bbc_home_page.click_sign_in

      @bbc_site.sign_in_page.fill_in_username(Faker::Internet.domain_word + Faker::Number.hexadecimal(3))

      @bbc_site.sign_in_page.fill_in_password(Faker::Internet.password)

      @bbc_site.sign_in_page.click_sign_in_button

      expect(@bbc_site.sign_in_page.check_error_message).to eq 'Sorry, we can’t find an account with that username. If you\'re over 13, try your email address instead or get help here.'

    end
      # Click sign in link

      # Fill in username on sign in page any username
      # Use your generator to fill in username

      # Fill in password on sign in pages
      # Use your generator

      # Click sign in button on sign in page

      # Assert - error is 'Sorry, we can't find an account with that username. If you\'re over 13, try your email address instead or get help here.'

  end

end
