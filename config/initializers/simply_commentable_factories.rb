if defined?(RAILS_ENV) && RAILS_ENV == 'test'
Factory.define :commenter, :class => :User do |f|
end
Factory.define :commentable, :class => :Post do |f|
end
end
