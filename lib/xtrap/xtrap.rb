require 'xtrap/gem_generator.rb'
require 'xtrap/html_generator.rb'
require 'xtrap/node_generator.rb'
require 'xtrap/test_class.rb'

module Xtrap

  options = {}
  option_parser = OptionParser.new do |option|
    option.on("i","--iteration") do
      options[:iteration] = true
    end

    opts.on("-u USER") do |user|
      options[:user] = user
    end

    opts.on("-p PASSWORD") do |password|
      options[:password] = password
    end
  end

  options_parser.parse!
  puts options.inspect

end