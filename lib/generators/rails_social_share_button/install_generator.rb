module RailsSocialShareButton
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      desc "Copy RailsSocialShareButton default files"
      source_root File.expand_path('../templates', __FILE__)

      def copy_config
        directory 'config'
      end
    end
  end
end
