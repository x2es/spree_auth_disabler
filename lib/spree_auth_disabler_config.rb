module Spree
  module Auth
    module Disabler
      # Singleton class to access the shipping configuration object and it's preferences (this seems like spree_auth:/lib/spree/auth/config.rb).
      #
      # Usage:
      #   Spree::Auth::Disabler::Config[:foo]                  # Returns the foo preference
      #   Spree::Auth::Disabler::Config[]                      # Returns a Hash with all the preferences
      #   Spree::Auth::Disabler::Config.instance               # Returns the configuration object
      #   Spree::Auth::Disabler::Config.set(preferences_hash)  # Set the spree auth preferences as especified in +preference_hash+
      class Config
        include Singleton
        include Spree::PreferenceAccess

        class << self
          def instance
            return nil unless ActiveRecord::Base.connection.tables.include?('configurations')
            SpreeAuthDisablerConfiguration.find_or_create_by_name("spree_auth_disabler")
          end
        end
      end
    end
  end
end
