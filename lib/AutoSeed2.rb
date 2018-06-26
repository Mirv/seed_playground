# TODO - add a block for finger print of the filesize to be added to name

class AutoSeed2
  def self.generate (params = {})
    raise Error.new("Migrations Pending") if ActiveRecord::Migration.check_pending!
    Rails.application.eager_load!                     # Ensures models loaded
    reject_models = ["ActiveRecord::SchemaMigration"]
    reject_attribs = ["id", "created_at", "updated_at"]  # Attributes to filter
    insert_string = "Blah1234"                        # default string in attributes

    # models = models.reject{|model| reject_models.include? model.name}
    # Filter the list of models from Active Record based on options in params
    models = ActiveRecord::Base.descendants
    models = models.map(&:name) - reject_models  # remove any from above
    
    models = models & params['INCLUDE'].split(',') if params['INCLUDE']
    models = models | params['REJECT'].split(',') if params['REJECT']

    models.each do | model_name |
      model = model_name.classify.constantize             # setup model to call
      attribs = model.column_names - reject_attribs       # drop extra db columns 
      attribs = attribs.map {|x| [x, insert_string]}.to_h # setup hash of columns
      result = model.create!(attribs)                     # save error msgs 
      puts result if result.errors.present?               # output errors
    end
    puts "~Fin~"
  end
end
