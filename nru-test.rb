require 'watir-webdriver'

@rooturl = 'http://philweber.github.io/nru-browser-demo/index.html'

case ARGV[0]
  when 'ff', 'Firefox'
    @b = Watir::Browser.new :firefox
  when 'chrome'
    @b = Watir::Browser.new :chrome
  else
    @b = Watir::Browser.new :phantomjs
end

links = Array[
  'Insights',
  'Synthetics',
  'Agent Installation',
  'APM',
  'Mobile Monitoring',
  'Server Monitoring',
  'Finding Information',
  'Webcast Trainings'
]

while true do
  @b.goto @rooturl
  links.each do |text|
    link = @b.link :text => text
    if link.exists? 
      link.click
    end
  end
end