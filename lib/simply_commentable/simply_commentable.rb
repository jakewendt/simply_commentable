module Simply::Commentable #:nodoc:

	def self.included(base)
		base.extend ClassMethods	
	end

	module ClassMethods
		def simply_commentable
#	add :by => :user

			has_many :comments, 
				:as => :commentable, 
				:dependent => :destroy, 
				:order => 'created_at ASC'

		end
	end
			
end
ActiveRecord::Base.send(:include, Simply::Commentable)
