# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{windows-api}
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Daniel J. Berger"]
  s.date = %q{2009-10-18}
  s.description = %q{      The windows-api library provides features over and above the basic
      interface provided by the win32-api library. Features included automatic
      constant generation, automatic defintion of ANSI and Unicode methods,
      special handling of functions that return a boolean value, and the
      ability to use native Windows type declarations.
}
  s.email = %q{djberg96@gmail.com}
  s.extra_rdoc_files = ["README", "CHANGES", "MANIFEST"]
  s.files = ["CHANGES", "lib/windows/api.rb", "lib/windows/wide_string.rb", "MANIFEST", "Rakefile", "README", "test/test_wide_string.rb", "test/test_windows_api.rb", "windows-api.gemspec"]
  s.homepage = %q{http://www.rubyforge.org/projects/win32utils}
  s.licenses = ["Artistic 2.0"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{win32utils}
  s.rubygems_version = %q{1.5.2}
  s.summary = %q{An easier way to create methods using Win32::API}
  s.test_files = ["test/test_wide_string.rb", "test/test_windows_api.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<win32-api>, [">= 1.4.5"])
    else
      s.add_dependency(%q<win32-api>, [">= 1.4.5"])
    end
  else
    s.add_dependency(%q<win32-api>, [">= 1.4.5"])
  end
end
