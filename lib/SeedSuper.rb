class SeedSuper
  def self.generate(params = {})
    
    # TODO - this chunk could be one method
    # Preping the models
    raise Error.new("Migrations Pending") if ActiveRecord::Migration.check_pending!
    Rails.application.eager_load!                     # Ensures models loaded
    reject_models = ["ActiveRecord::SchemaMigration"]
    reject_models << params['EXCLUDE'].split(',') if params['EXCLUDE']
    models = ActiveRecord::Base.descendants.map(&:name) - reject_models.flatten 
    models = models & params['ONLY'].split(',') if params['ONLY']
    
    # TODO - this chunk could be one method
    # Preping the attributes
    insert_string = "Blah1234"                        # default string in attributes
    reject_attribs = ["id", "created_at", "updated_at"]  # Attributes to filter
    
    # TODO - this belongs in AutoSeed 2 & 3 but not 1 ... which means they need a sub-superClass to implement it
    # TODO - this chunk could be one method - might have to in order to implement inheriting class
    models.each do | model_name |
      # STUB for the inheriting class to run here
      reps = params['REPS'].present? ? params['REPS'].to_i : 1
      generate_seeding(model_name, reps)
    end
  end
  
  def self.generate_seeding(model_name)
    # name = self.method(self).name
    raise Error.new("Generate requires subclass to over with instructions.")
  end
end