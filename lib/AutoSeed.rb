 require "AutoSeed/bar"
 require "AutoSeed/railtie" if defined?(Rails)

  class Foo
    def self.bar (params = {})
      Rails.application.eager_load!

      # Filter the list of models from Active Record
      models = ActiveRecord::Base.descendants.map { |model| model.name }

      models = models & params['INCLUDE'].split(',') if params['INCLUDE']
      models = models | params['REJECT'].split(',') if params['REJECT']

      models.each do | model_name |

      # Print the model creation method
        puts "[{" + model_name.classify.constantize.all.map { |model|
          model.attributes.reject{ |key| key == "id" }.map { |key, attribute|
            key == "id" ? nil : "#{key}: '#{attribute}'"
          }.join(", ")
        }.join("},\n{")
        + "}].each { |attributes| \n"
        + model_name + ".find_or_create_by(attributes) }"

      end

    end
  end

