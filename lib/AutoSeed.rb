# require "AutoSeed/version"
 require "AutoSeed/bar"
 require "AutoSeed/rail_tie" if defined?(Rails)

  class Foo
    def self.bar
      puts "Foobar"
    end
  end

