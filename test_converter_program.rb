require('test/unit')
require('converter_program.rb')

class ConverterTest<Test::Unit::TestCase

  def test_celsius
    c=ConverterProgram.new
    assert_equal(0, c.celsius(32))
    assert_equal(100, c.celsius(212))
    assert_equal(2.4, c.celsius(36.32))
    assert_equal(4.4, c.celsius(40))
    end

   def test_fahrenheit
     f=ConverterProgram.new
     assert_equal(32, f.fahrenheit(0))
     assert_equal(212, f.fahrenheit(100))
     assert_equal(36.3, f.fahrenheit(2.4))
     assert_equal(-40, f.fahrenheit(-40))
     assert_equal(-688, f.fahrenheit(-400))
   end
 end

