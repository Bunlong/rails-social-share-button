require "rails_social_share_button/version"
require "rails_social_share_button/config"
require "rails_social_share_button/helper"

I18n.load_path += Dir.glob( File.dirname(__FILE__) + "lib/locales/*.{rb,yml}" )

module RailsSocialShareButton
  module Rails
    if ::Rails.version < "3.1"
      require "rails_social_share_button/railtie"
    else
      require "rails_social_share_button/engine"
    end
  end
end

ActiveSupport.on_load(:action_view) do
  include RailsSocialShareButton::Helper
end
