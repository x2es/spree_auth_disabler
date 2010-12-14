UserSessionsController.class_eval do
  before_filter :client_login_disabler, :only => :create

private

  # TODO: to create specs for this
  def client_login_disabler
    unless Spree::Auth::Disabler::Config[:client_login_enabled]
      # TODO: add variants of workaround (404 and so on)
      if (user = User.find_by_email(params[:user_session]['login'])) && (!user.has_role? :admin)
        flash[:error] = t('spree_auth_disabler.client_login_disabled')
        redirect_to root_url 
      end
    end
  end

end
