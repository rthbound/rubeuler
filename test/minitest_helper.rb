require 'coveralls'
Coveralls.wear!
# Testing frameworks
require "minitest/autorun"
require "pay_dirt/use_case"
require "pay_dirt/result"

# Debugger
require "pry"

# The gem
$: << File.dirname(__FILE__) + "/../lib"
$: << File.dirname(__FILE__)

require "rubeuler"
