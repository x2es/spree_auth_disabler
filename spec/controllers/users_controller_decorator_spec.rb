# TODO make specs for this
#
# == signup disabler
#
# * unless Spree::Auth::Config[:client_signup_enabled]
#
#   * action new should redirect to root (in future 404 or custom redirect by option) and
#     flash[:error] should be seems to Signup disabled
#   * action create --//--
#   * TODO: signup link on login form should be hidden
#
# * if Spree::Auth::Config[:client_signup_enabled]
#   
#   * action new should render regular signup form
#   * action create should create user
#   * signup link on login form should be available
#
