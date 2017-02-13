 require "AutoSeed/bar"
 require "AutoSeed/railtie" if defined?(Rails)

  class Foo
    def self.bar (params = {})
      Rails.application.eager_load!

      included_models = params['INCLUDE'].split(',')

      # Filter the list of models from Active Record
      models = ActiveRecord::Base.descendants.map { |model|
        model.name } & included_models

      models.each do | model_name |

      # Print the model creation method
      puts "[" + model_name.classify.constantize.all.map { |model|
         model.attributes.map { |key, attribute|
           "#{key}: '#{attribute}'"
         }.join(", ")
      }.join(",\n") + "]"

        end

    end
  end

