require 'test_helper'

class SimplyCommentable::CommentTest < ActiveSupport::TestCase

	assert_should_belong_to :commenter, :polymorphic => true
	assert_should_belong_to :commentable, :polymorphic => true
	assert_should_require :body
#	assert_should_require_attribute_length(:body,:in => 1..250)
	assert_should_require_attribute_length(:body,:minimum => 1, :maximum => 250)
	assert_should_not_protect_attribute :body
	assert_should_protect_attribute :commenter_id
	assert_should_protect_attribute :commenter_type
	assert_should_protect_attribute :commentable_id
	assert_should_protect_attribute :commentable_type

	test "should find_comments_by_commenter" do
pending
	end

	test "should find_comments_for_commentable" do
pending
	end

	test "should find_commentable" do
pending
	end

end
