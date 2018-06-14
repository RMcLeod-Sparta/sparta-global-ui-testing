require_relative 'pages/bbc_home_page'
require_relative 'pages/bbc_sign_in_page'

class BbcSite

  def bbc_home_page
    BbcHomepage.new
  end

  def sign_in_page
    BbcSignInPage.new
  end

end
