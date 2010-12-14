class SpreeAuthDisablerConfiguration < Configuration
  
  # Usage
  #   Spree::Auth::Disabler::Config[:client_signup_enabled]
  #   Spree::Auth::Disabler::Config.set :client_signup_enabled => true/false
  #   ...
  #   (see lib/spree_auth_disable_config.rb)
  #
  #   or you may override this class such as regular spree configurations 

  preference :client_signup_enabled,     :boolean, :default => false
  preference :password_recovery_enabled, :boolean, :default => false
  preference :client_login_enabled,      :boolean, :default => false
end
