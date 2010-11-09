module SimplyCommentable::Assertions
	def self.included(base)
		base.extend(ClassMethods)
	end
	module ClassMethods
		def assert_simply_commentable
			test "should be simply commentable" do
				assert true
			end
		end
		def assert_simply_commentable_commenter
			test "should be simply commentable commenter" do
				assert true
			end
		end
	end
	module InstanceMethods
	end
end
require 'active_support'
require 'active_support/test_case'
ActiveSupport::TestCase.send(:include,SimplyCommentable::Assertions)
