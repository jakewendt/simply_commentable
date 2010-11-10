module SimplyCommentable::Assertions
	def self.included(base)
		base.extend(ClassMethods)
	end
	module ClassMethods
		def assert_simply_commentable
#			assert_should_have_many :comments, :polymorphic => true
			test "should be simply commentable" do
				assert model_name.constantize.new.respond_to?(:comments)
#				self.class.assert_should_have_many :comments, :polymorphic => true
			end
		end
		def assert_simply_commentable_commenter
#			assert_should_have_many :comments, :polymorphic => true
			test "should be simply commentable commenter" do
				assert model_name.constantize.new.respond_to?(:comments)
#				self.class.assert_should_have_many :comments, :polymorphic => true
			end
		end
	end
	module InstanceMethods
	end
end
require 'active_support'
require 'active_support/test_case'
ActiveSupport::TestCase.send(:include,SimplyCommentable::Assertions)
