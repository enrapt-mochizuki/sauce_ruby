require 'jasmine'

module Jasmine
  class SeleniumDriver
    def initialize(browser, http_address)
      @http_address = http_address
      name = job_name
      @driver = Sauce::Selenium2.new(:job_name => name)
      puts "Starting job named: #{name}"
    end

    def job_name
      "Jasmine Test Run #{Time.now.utc.to_i}"
    end
  end
end

