require 'watir-webdriver'

@rooturl = 'http://www.philweber.com/newrelic/browser/default.htm'

case ARGV[0]
when 'ff', 'Firefox'
  @b = Watir::Browser.new :firefox
when 'chrome'
  @b = Watir::Browser.new :chrome
else
  @b = Watir::Browser.new :phantomjs
end

while true do
  @b.goto @rooturl
  @b.goto @rooturl + '#insights'
  @b.goto @rooturl + '#synthetics'
  @b.goto @rooturl + '#agent-install'
  @b.goto @rooturl + '#apm'
  @b.goto @rooturl + '#mobile'
  @b.goto @rooturl + '#server'
  @b.goto @rooturl + '#info'
end
