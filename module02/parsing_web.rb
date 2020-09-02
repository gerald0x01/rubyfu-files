#!/bin/ruby
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("http://rubyfu.net/content/"))
page.css(".book .book-summary ul.summary li a, .book .book-summary ul.summary li span").each { |css| puts css.text.strip.squeeze.gsub("\n", '') }
