require 'rubygems'
require 'open-uri'
require 'nokogiri'

class AnsuzGem
  attr_accessor :base_url
  def initialize base_url
    @base_url = base_url
  end

  def get_path(path)
    file = open("#{base_url}/pages/#{path}") do |f|
      f.read
    end
    out = Nokogiri::HTML(file)
  end

  # This method gets the very first content page plugin's contents
  # FIXME: make it more robust
  def get_contents_for(path)
    out = get_path(path)
    out.css("#content").inner_html
  end
end
