# Testing frameworks
require "turn"
require "minitest/spec"
require "minitest/autorun"

# Debugger
require "pry"

# The gem
$: << File.dirname(__FILE__) + "/../lib"
$: << File.dirname(__FILE__)
require "rubeuler"

# Turn configuration
#Turn.config do |config|
#  config.format = :pretty
#  # config.trace = true
#  config.natural = true
#end
