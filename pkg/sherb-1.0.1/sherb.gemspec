# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sherb}
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Andrew Snow"]
  s.date = %q{2011-01-28}
  s.default_executable = %q{sherb}
  s.description = %q{Unix Shell (SH) with Embedded Ruby (ERB)}
  s.email = %q{andrew@modulus.org}
  s.executables = ["sherb"]
  s.extra_rdoc_files = ["CHANGELOG", "LICENSE", "README", "bin/sherb", "lib/sherb.rb"]
  s.files = ["CHANGELOG", "LICENSE", "Manifest", "README", "Rakefile", "bin/sherb", "lib/sherb.rb", "test/test_all.rb", "sherb.gemspec"]
  s.homepage = %q{http://github.com/andys/sherb}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Sherb", "--main", "README"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{sherb}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Unix Shell (SH) with Embedded Ruby (ERB)}
  s.test_files = ["test/test_all.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
