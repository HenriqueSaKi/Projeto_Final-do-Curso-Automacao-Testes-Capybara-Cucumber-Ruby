require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'

#Define configurations of test environment
Capybara.config do |config|
    #default_driver = :selenium  :chrome  :chrome_headless
    config.default_driver = :chrome
    config.app_host = '' #set url
    config.default_max_wait_time = 5
end