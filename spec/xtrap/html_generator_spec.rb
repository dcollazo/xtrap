require 'aruba/cucumber'
require 'html_generator.rb'

describe Xtrap::HtmlGenerator do
  before do
    @dirs = ["spec/temp"]
  end

  