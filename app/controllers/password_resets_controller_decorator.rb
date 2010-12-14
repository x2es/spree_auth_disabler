PasswordResetsController.class_eval do
  before_filter :password_reset_disabler, :only => [:new, :create]

private

  def password_reset_disabler
    unless Spree::Auth::Disabler::Config[:password_recovery_enabled]
      # TODO: workaround wariants
      flash[:error] = t('spree_auth_disabler.password_recovery_disabled')
      redirect_to root_url
    end
  end

end
