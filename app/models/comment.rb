class Comment < ActiveRecord::Base
	belongs_to :commenter,   :polymorphic => true, :counter_cache => true
	belongs_to :commentable, :polymorphic => true, :counter_cache => true

	validates_presence_of :body
	
	attr_accessible :body
	
	# Helper class method to lookup all comments assigned
	# to all commentable types for a given commenter.
	def self.find_comments_by_commenter(commenter)
		find(:all,
			:conditions => ["commenter_type = ? and commenter_id = ?", 
				commenter.class.name, commenter.id],
			:order => "created_at DESC"
		)
	end
	
	# Helper class method to look up all comments for 
	# commentable class name and commentable id.
#	def self.find_comments_for_commentable(commentable_str, commentable_id)
	def self.find_comments_for_commentable(commentable)
		find(:all,
			:conditions => ["commentable_type = ? and commentable_id = ?", 
				commentable.class.name, commentable.id],
			:order => "created_at DESC"
		)
	end

	# Helper class method to look up a commentable object
	# given the commentable class name and id 
#	def self.find_commentable(commentable_str, commentable_id)
	def self.find_commentable(commentable)
		commentable.class.name.constantize.find(commentable.id)
	end
end
