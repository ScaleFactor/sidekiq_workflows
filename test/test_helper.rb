require 'minitest/autorun'
require 'mocha/minitest'
require 'sidekiq-pro'
require 'sidekiq/testing'

require 'pry'

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://redis:6379' }
end

Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://redis:6379' }
end

require 'sidekiq_workflows'
