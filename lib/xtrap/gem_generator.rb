require 'xtrap'

class Xtrap::GemGenerator
  attr_accessor :@name

  def initialize(args)
    @name = args[:@name]
  end

  def create_directories
    `mkdir "#{@name}"`
    `mkdir "#{@name}/bin"`
    `mkdir "#{@name}/features"`
    `mkdir "#{@name}/features/support"`
    `mkdir "#{@name}/lib"`
    `mkdir "#{@name}/lib/#{@name}"`
    `mkdir "#{@name}/spec"`
    `mkdir "#{@name}/spec/temp"`
    `mkdir "#{@name}/spec/#{@name}"`
    `mkdir "#{@name}/test"`
  end

  def create_bin_file
    File.open("#{@name}/bin/#{@name}", 'w') do |file|
      file.puts '#!/usr/bin/env ruby'
      file.puts "require '#{@name}'"
    end
  end

  def create_gemfile
    File.open("#{@name}/Gemfile", 'w') do |file|
      file.puts "source 'https://rubygems.org'"
    end
  end

  def create_lib_file
    File.open("#{@name}/lib/#{@name}/#{@name}", 'w') do |file|
      file.puts "module #{@name.capitalize}"
      file.puts "end"
    end
  end

  def create_gemspec
    File.open("#{@name}/#{@name}.gemspec", 'w') do |file|
      file.puts "Gem::Specification.new do |s|"
      file.puts "s.name         = #{@name}"
      file.puts "s.version      = 0.0.0"
      file.puts "s.date         = Time.new.to_s[0..9]"
      file.puts "s.summary      = "
      file.puts "s.authors      = []"
      file.puts "s.email        = []"
      file.puts "s.files        = ['lib/#{@name}/{#@name}.rb']"
      file.puts "s.homepage     = "
      file.puts "s.license      = "
    end
  end

  def create_rakefile
    File.open("#{@name}/Rakefile", 'w') do |file|
      file.puts "require 'rake/clean'"
      file.puts "require 'rubygems'"
      file.puts "require 'rubygems/package_task'"
      file.puts "require 'rdoc/task'"
      file.puts "require 'cucumber'"
      file.puts "require 'cucumber/rake/task'"
    end
  end

  def create_rspec_file
    File.open("#{@name}/.rspec", 'w') do |file|
      file.puts '--format documentation --color'
    end
  end

end
