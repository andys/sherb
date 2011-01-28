
require 'test/unit'
require 'tempfile'

class TestSherb < Test::Unit::TestCase

  def setup
    @tempfile = Tempfile.new(self.class.to_s)
    @tempfile.puts "echo -n Hello <%= 'world' %>"
    @tempfile.close
  end
  
  def teardown
    @tempfile.unlink
  end

  def test_stdin
    File.popen("bin/sherb < #{@tempfile.path}", 'r') do |io|
      assert_equal 'Hello world', io.read
    end
  end
  
  def test_file
    File.popen("bin/sherb #{@tempfile.path}", 'r') do |io|
      assert_equal 'Hello world', io.read
    end
  end
  
end
