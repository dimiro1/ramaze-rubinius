# This file contains your application, it requires dependencies and necessary parts of 
# the application.
#
# It will be required from either `config.ru` or `start.rb`
require 'rubygems'
require 'bundler/setup'

Bundler.require(:default)

# Make sure that Ramaze knows where you are
Ramaze.options.roots = [__DIR__]

Ramaze.options.mode = :live

# Initialize controllers and models
require __DIR__('model/init')
require __DIR__('controller/init')
