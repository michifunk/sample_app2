# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{win32-process}
  s.version = "0.6.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Daniel Berger", "Park Heesob"]
  s.date = %q{2010-12-27}
  s.description = %q{    The win32-process library implements several Process methods that are
    either unimplemented or dysfunctional in some way in the default Ruby
    implementation. Examples include Process.kill, Process.waitpid,
    Process.create and an experimental Process.fork method.
}
  s.email = %q{djberg96@gmail.com}
  s.extra_rdoc_files = ["README", "CHANGES", "MANIFEST"]
  s.files = ["CHANGES", "examples/example_create.rb", "examples/example_fork_wait.rb", "examples/example_fork_waitpid.rb", "examples/example_kill.rb", "lib/win32/process.rb", "MANIFEST", "Rakefile", "README", "test/test_win32_process.rb", "win32-process.gemspec"]
  s.homepage = %q{http://www.rubyforge.org/projects/win32utils}
  s.licenses = ["Artistic 2.0"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{win32utils}
  s.rubygems_version = %q{1.5.2}
  s.summary = %q{Adds and redefines several Process methods for MS Windows}
  s.test_files = ["test/test_win32_process.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<windows-pr>, [">= 1.1.2"])
      s.add_development_dependency(%q<test-unit>, [">= 2.1.1"])
      s.add_development_dependency(%q<sys-proctable>, [">= 0"])
    else
      s.add_dependency(%q<windows-pr>, [">= 1.1.2"])
      s.add_dependency(%q<test-unit>, [">= 2.1.1"])
      s.add_dependency(%q<sys-proctable>, [">= 0"])
    end
  else
    s.add_dependency(%q<windows-pr>, [">= 1.1.2"])
    s.add_dependency(%q<test-unit>, [">= 2.1.1"])
    s.add_dependency(%q<sys-proctable>, [">= 0"])
  end
end
