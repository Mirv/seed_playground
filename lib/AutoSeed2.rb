# TODO - add a block for finger print of the filesize to be added to name

class AutoSeed2
  def self.generate (params = {})
    raise Error.new("Migrations Pending") if ActiveRecord::Migration.check_pending!
    
    insert_string = "Blah1234"                        # default string in attributes
    reject_attribs = ["id", "created_at", "updated_at"]  # Attributes to filter
    
    Rails.application.eager_load!                     # Ensures models loaded
    reject_models = ["ActiveRecord::SchemaMigration", params['EXCLUDE']&.split(',')]
    models = ActiveRecord::Base.descendants.map(&:name) - reject_models.flatten 
    models = models & params['INCLUDE'].split(',') if params['INCLUDE']

    models.each do | model_name |
      model = model_name.classify.constantize             # setup model to call
      attribs = model.column_names - reject_attribs       # drop extra db columns 
      attribs = attribs.map {|x| [x, insert_string]}.to_h # setup hash of columns
      result = model.create!(attribs)                     # save error msgs 
      puts result #if result.errors.present?               # output errors
    end
    puts "~Fin~"
  end
end


    # issue_models = ["ActiveRecord::SchemaMigration"]
    # user_rejected = params['EXCLUDE'].split(',')
    # reject_models =  (user_rejected + issue_models).flatten
