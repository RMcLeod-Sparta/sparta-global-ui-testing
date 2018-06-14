require 'capybara/dsl'

class BbcSignInPage
  include Capybara::DSL

  USERNAME_FIELD = 'user-identifier-input'
  PASSWORD_FIELD = 'password-input'
  SIGN_IN_BUTTON = 'submit-button'
  FORM_MESSAGE = 'form-message-username'

  def fill_in_username username
    fill_in(USERNAME_FIELD, with: username)
  end

  def fill_in_password password
    fill_in(PASSWORD_FIELD, with: password)
  end

  def click_sign_in_button
    click_button(SIGN_IN_BUTTON)
  end

  def check_error_message
    find_by_id(FORM_MESSAGE).text
  end

end
