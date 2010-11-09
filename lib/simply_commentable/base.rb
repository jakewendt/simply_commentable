module SimplyCommentable::Base

	def self.included(base)
		base.extend ClassMethods	
	end

	module ClassMethods
		def simply_commentable_commenter

			has_many :comments, 
				:as => :commenter, 
				:dependent => :destroy, 
				:order => 'created_at ASC'

		end
		def simply_commentable

			has_many :comments, 
				:as => :commentable, 
				:dependent => :destroy, 
				:order => 'created_at ASC'

		end
	end
			
end	#	module SimplyCommentable::Base

require 'active_record'
ActiveRecord::Base.send(:include, SimplyCommentable::Base)
