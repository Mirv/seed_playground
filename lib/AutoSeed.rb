# require "AutoSeed/version"
 require "AutoSeed/bar"
 require "AutoSeed/railtie" if defined?(Rails)

  class Foo
    def self.bar
      Rails.application.eager_load!

      models = ActiveRecord::Base.descendants

      attributes = models[19].first.attributes

    end
  end

