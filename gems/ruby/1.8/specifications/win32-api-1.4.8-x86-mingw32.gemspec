# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{win32-api}
  s.version = "1.4.8"
  s.platform = %q{x86-mingw32}

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Daniel J. Berger", "Park Heesob"]
  s.date = %q{2011-01-16}
  s.description = %q{    The Win32::API library is meant as a replacement for the Win32API
    library that ships as part of the standard library. It contains several
    advantages over Win32API, including callback support, raw function
    pointers, an additional string type, and more.
}
  s.email = %q{djberg96@gmail.com}
  s.extra_rdoc_files = ["README", "CHANGES", "MANIFEST", "ext/win32/api.c"]
  s.files = ["CHANGES", "lib/win32/api.rb", "lib/win32/ruby18/win32/api.so", "lib/win32/ruby19/win32/api.so", "MANIFEST", "Rakefile", "README", "test/test_win32_api.rb", "test/test_win32_api_callback.rb", "test/test_win32_api_function.rb", "win32-api.gemspec", "ext/win32/api.c"]
  s.homepage = %q{http://www.rubyforge.org/projects/win32utils}
  s.licenses = ["Artistic 2.0"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.2")
  s.rubyforge_project = %q{win32utils}
  s.rubygems_version = %q{1.5.2}
  s.summary = %q{A superior replacement for Win32API}
  s.test_files = ["test/test_win32_api.rb", "test/test_win32_api_callback.rb", "test/test_win32_api_function.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<test-unit>, [">= 2.1.2"])
    else
      s.add_dependency(%q<test-unit>, [">= 2.1.2"])
    end
  else
    s.add_dependency(%q<test-unit>, [">= 2.1.2"])
  end
end
