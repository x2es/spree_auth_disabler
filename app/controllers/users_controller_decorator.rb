UsersController.class_eval do

  before_filter :signup_disabler, :only => [:new, :create]

private

  # TODO: to create specs for this
  def signup_disabler
    unless Spree::Auth::Disabler::Config[:client_signup_enabled]
      # TODO: create variants of workaround (root redirect, 404 and so on)
      flash[:error] = t('spree_auth_disabler.client_signup_disabled') 
      redirect_to root_url
    end
  end

end
