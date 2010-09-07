module Simply
#	predefined namespace
end
require 'simply_commentable/simply_commentable'

# From http://guides.rubyonrails.org/plugins.html#controllers
# Fix for:
# ArgumentError in SurveyorController#edit 
# A copy of ApplicationController has been removed from the module tree but is still active!
# Equivalent of using "unloadable" in SurveyorController (unloadable has been deprecated)
%w{models controllers}.each do |dir|
  path = File.expand_path(File.join(File.dirname(__FILE__), '../app', dir))
  ActiveSupport::Dependencies.autoload_once_paths.delete(path)
end
