require "AutoSeed/railtie" if defined?(Rails)
require 'benchmark'

class AutoSeed
  def self.generate (params = {})
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

# # TODO - add in error handling - done
# # TODO - add in ActiveRecord::Migration.check_pending! check
# # TODO - add a block for finger print of the filesize to be added to name

# class AutoSeed2
#   def self.generate (params = {})
#     raise Error.new("Migrations Pending") if ActiveRecord::Migration.check_pending!
#     Rails.application.eager_load!                   # Ensures models loaded
#     reject_attribs = ["id", "created_at", "updated_at"]  # Attributes to filter
#     insert_string = "Blah1234"                      # default string in attributes

#     # Filter the list of models from Active Record based on options in params
#     models = ActiveRecord::Base.descendants.map { |model| model.name }
#     models = models & params['INCLUDE'].split(',') if params['INCLUDE']
#     models = models | params['REJECT'].split(',') if params['REJECT']

#     models.each do | model_name |
#       model = model_name.classify.constantize             # setup model to call
#       attribs = model.column_names - reject_attribs       # drop extra db columns 
#       attribs = attribs.map {|x| [x, insert_string]}.to_h # setup hash of columns
#       result = model.find_or_create_by!(attribs)          # save error msgs 
#       # puts result                                         # output results
#     end
#   end
# end

# add in randomizer or this slows system too much?

# Slowest version
class AutoSeed3
  def self.generate (params = {})
    Rails.application.eager_load!                   # Ensures models loaded
    reject_us = ["id", "created_at", "updated_at"]  # Attributes to filter

    # Filter the list of models from Active Record based on options in params
    models = ActiveRecord::Base.descendants.map { |model| model.name }
    models = models & params['INCLUDE'].split(',') if params['INCLUDE']
    models = models | params['REJECT'].split(',') if params['REJECT']

    models.each do | model_name |
      model = process_model_name(model_name)        # setup calls model
      attribs = remove_attributes(model, reject_us) # drop any columns 
      model_params = build_params(model, attribs)   # hash based on model colum
      model.find_or_create_by(model_params)
    end
  end

  def self.build_params(model, attribs)
    # TODO - hook here calling to faker gem stuff
    # NOTE - this might make gem less idempotent? 
    some_variable = "BLAH#{random_generate}"    
    h = attribs.map { |x| [x, some_variable] }.to_h
    return h
  end
  
  def self.remove_attributes(model, reject_us)
    # TODO -  hook for reading other parameters for skipping columns
    model.column_names - reject_us
  end
  
  def self.process_model_name(model_name)
    model_name.classify.constantize
  end
  
  def self.random_generate
    o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
    string = (0...50).map { o[rand(o.length)] }.join
  end
end