# TODO make specs for this
#
# == password recovery disabler
#
# * unless Spree::Auth::Disabler::Config[:password_recovery_enabled]
#
#   * new and create actions should be disabled
#
#     * redirect to root
#     * message like 'Password recovery disabled'
#
# * if Spree::Auth::Disabler::Config[:password_recovery_enabled] 
#   
#   * action new should render form
#   * action create should
#
#     * flash.notice t("password_reset_instructions_are_mailed")

