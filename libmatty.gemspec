# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{libmatty}
  s.version = "0.9.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Matasano Security, LLC"]
  s.date = %q{2009-05-11}
  s.default_executable = %q{libmatty}
  s.description = %q{Stanard Matasano extensions library for ruby}
  s.email = %q{td@matasano.com}
  s.executables = ["libmatty"]
  s.extra_rdoc_files = ["History.txt", "README.txt", "bin/libmatty"]
  s.files = ["History.txt", "README.txt", "Rakefile", "bin/libmatty", "lib/libmatty.rb", "lib/libmatty/array.rb", "lib/libmatty/class.rb", "lib/libmatty/dir.rb", "lib/libmatty/duplicable.rb", "lib/libmatty/enumerable.rb", "lib/libmatty/file.rb", "lib/libmatty/fixnum.rb", "lib/libmatty/hash.rb", "lib/libmatty/integer.rb", "lib/libmatty/ipaddr.rb", "lib/libmatty/irb.rb", "lib/libmatty/math.rb", "lib/libmatty/module.rb", "lib/libmatty/numeric.rb", "lib/libmatty/object.rb", "lib/libmatty/range.rb", "lib/libmatty/socket.rb", "lib/libmatty/string.rb", "lib/libmatty/symbol.rb", "spec/libmatty_spec.rb", "spec/spec_helper.rb", "tasks/ann.rake", "tasks/bones.rake", "tasks/gem.rake", "tasks/git.rake", "tasks/notes.rake", "tasks/post_load.rake", "tasks/rdoc.rake", "tasks/rubyforge.rake", "tasks/setup.rb", "tasks/spec.rake", "tasks/svn.rake", "tasks/test.rake", "tasks/zentest.rake", "test/test_libmatty.rb"]
  s.homepage = %q{http://github.com/tduehr/libmatty/tree/master}
  s.rdoc_options = ["--inline-source", "--line-numbers", "--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{ }
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{Stanard Matasano extensions library for ruby}
  s.test_files = ["test/test_libmatty.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bones>, [">= 2.5.0"])
    else
      s.add_dependency(%q<bones>, [">= 2.5.0"])
    end
  else
    s.add_dependency(%q<bones>, [">= 2.5.0"])
  end
end
