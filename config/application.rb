require File.expand_path('../boot', __FILE__)
require 'rails/all'

Bundler.require(*Rails.groups)

module Identification
  class Application < Rails::Application
    # タイムゾーンの設定
    config.time_zone = 'Tokyo'

    # ロケールの設定
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :ja
    
    # ストロングパラメータを無効
    #config.action_controller.permit_all_parameters = true
    
    # ジェネレータの設定
    config.generators do |g|
      g.helper false                # アセット無効
      g.assets false                # ヘルパー無効
      g.test_framework :rspec
      g.controller_specs false
      g.view_specs false
    end
  end
end
