# require "AutoSeed/version"
 require "AutoSeed/bar"
 require "AutoSeed/railtie" if defined?(Rails)

  class Foo
    def self.bar
      Rails.application.eager_load!

      models = ActiveRecord::Base.descendants
      Industry.connection

      ActiveRecord::Base.descendants.map { |model| model.name } & ["Industry"]

      puts FilterItem.all.map { |model|
         model.attributes.map { |k,v| "#{k}: #{v}"
         }.join(", ")
      }.join(",\n")


    end
  end

