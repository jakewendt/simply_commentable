require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

desc 'Generate documentation for the simply_commentable plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
	rdoc.rdoc_dir = 'rdoc'
	rdoc.title = 'SimplyCommentable'
	rdoc.options << '--line-numbers' << '--inline-source'
	rdoc.rdoc_files.include('README')
	rdoc.rdoc_files.include('lib/**/*.rb')
end

begin
	require 'jeweler'
	Jeweler::Tasks.new do |gem|
		gem.name = "jakewendt-simply_commentable"
		gem.summary = %Q{one-line summary of your gem}
		gem.description = %Q{longer description of your gem}
		gem.email = "github@jakewendt.com"
		gem.homepage = "http://github.com/jakewendt/simply_commentable"
		gem.authors = ["George 'Jake' Wendt"]
		# gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings

		gem.files  = FileList['config/routes.rb']
		gem.files += FileList['app/**/*.rb']
		gem.files += FileList['app/**/*.erb']
		gem.files += FileList['lib/**/*.rb']
		gem.files += FileList['lib/**/*.rake']
		gem.files += FileList['generators/**/*']
		gem.files -= FileList['**/versions/*']

		gem.test_files  = FileList['test/**/*.rb']
		gem.test_files -= FileList['test/test_helper.rb']

		gem.add_dependency('rails', '~> 2')
		gem.add_dependency('jakewendt-rails_extension')
	end
	Jeweler::GemcutterTasks.new
rescue LoadError
	puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require(File.join(File.dirname(__FILE__), 'config', 'boot'))
require 'rdoc'
require 'rdoc/rdoc'
require 'tasks/rails'
