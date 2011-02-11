#	From `script/generate simply_commentable` ...
unless Gem.source_index.find_name('jakewendt-simply_commentable').empty?
	gem 'jakewendt-simply_commentable'
	require 'simply_commentable/test_tasks'
end
