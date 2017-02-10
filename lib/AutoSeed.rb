# require "AutoSeed/version"
 require "AutoSeed/bar"
 require "AutoSeed/railtie" if defined?(Rails)

  class Foo
    def self.bar
      puts "Foobar"
    end
  end

