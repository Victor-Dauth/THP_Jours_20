require 'bundler'
Bundler.require

require_relative 'lib/router.rb'

def perform

  Router.new.perform
end

perform