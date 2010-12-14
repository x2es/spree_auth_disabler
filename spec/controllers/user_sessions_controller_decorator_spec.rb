# TODO make specs for this
#
# == client login disabler
#
# * unless Spree::Auth::Config[:client_login_enabled]
#
#   * for user login action create should redirect to root (in future 404 or custom redirect by option) 
#     and flash[:error] should be seems to 'Client login disabled'
#   * user with role :admin should login normally
#   * if given user not found in base - should not be thrown any exceptions
#   * client login link in _login_bar partial should be hidden
#
# * if Spree::Auth::Config[:client_login_enabled]
#   
#   * action create should create user session
#   * client login link in _login_bar partial should be available
#
