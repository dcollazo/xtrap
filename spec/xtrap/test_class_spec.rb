APP_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '..', '..'))
$: << File.join(APP_ROOT, 'lib/xtrap_gem') # File location
require 'test_class.rb' # Class to test

describe Xtrap::TestClass do
  before do
    @foo = Xtrap::TestClass.new(name: 'foo')
  end
  it "should have a name" do
    @foo.name.should eq 'foo'
  end
  context '#return_name' do
    it 'should return the object\'s name in a string' do
      @foo.return_name.should include 'foo'
    end
  end
end

  

