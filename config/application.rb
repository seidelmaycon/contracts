# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Contracts
  class Application < Rails::Application
    config.load_defaults 5.2

    Time::DATE_FORMATS[:default] = "%d/%m/%Y"
  end
end
