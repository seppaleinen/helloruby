require 'test/unit'

class TestClass < Test::Unit::TestCase
	def testMethod
		actual = 3
		assert_equal actual, 3
	end
end