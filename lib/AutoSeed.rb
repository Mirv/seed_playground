require "AutoSeed/railtie" if defined?(Rails)

class AutoSeed2
  def self.generate (params = {})
    Rails.application.eager_load!                   # Ensures models loaded
    reject_us = ["id", "created_at", "updated_at"]  # Attributes to filter
    insert_string = "Blah1234"

    # Filter the list of models from Active Record based on options in params
    models = ActiveRecord::Base.descendants.map { |model| model.name }
    models = models & params['INCLUDE'].split(',') if params['INCLUDE']
    models = models | params['REJECT'].split(',') if params['REJECT']

    models.each do | model_name |
      model = model_name.classify.constantize        # setup calls model
      attribs = model.column_names - reject_us       # drop any columns 
      model_params = attribs.map { |x| [x, insert_string] }.to_h # setup hash of columns
      result = model.find_or_create_by!(model_params)
      puts result
    end
  end
end