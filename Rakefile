# Look in the tasks/setup.rb file for the various options that can be
# configured in this Rakefile. The .rake files in the tasks directory
# are where the options are used.

begin
  require 'bones'
  Bones.setup
rescue LoadError
  begin
    load 'tasks/setup.rb'
  rescue LoadError
    raise RuntimeError, '### please install the "bones" gem ###'
  end
end

ensure_in_path 'lib'
require 'libmatty'

task :default => 'spec:run'

PROJ.name = 'libmatty'
PROJ.ignore_file = '.gitignore'
PROJ.authors = 'Matasano Security, LLC'
PROJ.email = 'td@matasano.com'
PROJ.description = 'Stanard Matasano extensions library for ruby'
PROJ.url = 'http://github.com/tduehr/libmatty/tree/master'
PROJ.version = Libmatty::VERSION
# PROJ.rubyforge.name = 'libmatty'

PROJ.spec.opts << '--color'

PROJ.rdoc.opts << '--inline-source'
PROJ.rdoc.opts << '--line-numbers'

# EOF
