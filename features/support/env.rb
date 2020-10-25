require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'helper.rb'
require_relative 'page_helper.rb'

AMBIENTE = ENV['AMBIENTE']
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

World(Helper)
World(Pages)

#Define configurations of test environment
Capybara.configure do |config|
    #default_driver = :selenium  :chrome  :chrome_headless
    config.default_driver = :selenium_chrome
    config.app_host = CONFIG['url_padrao'] #set url
    config.default_max_wait_time = 5
end