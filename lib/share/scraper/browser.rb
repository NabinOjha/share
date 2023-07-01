require "watir"

module Share
  module Scraper
    class Browser
      attr_reader :browser

      def initialize
        @browser = Watir::Browser.new
        @browser.goto("https://www.nepalstock.com/")
      end

      def fetch_page(url)
        @browser.goto(url)
      end

      def extract_data(css_selector)
        @browser.element(css: css_selector).text
      end
    end
  end
end
