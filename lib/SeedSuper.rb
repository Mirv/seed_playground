class SeedSuper
  def self.generate(params = {})
    # If migrations pending - why bother doing anything else?
    raise Error.new("Migrations Pending") if ActiveRecord::Migration.check_pending!
    models = ModelDiscovery.find_models(params['ONLY'], params['EXCLUDE'])
 
    # TODO - this chunk should be configured in a file somewhere ... yaml?
    # TODO - faker gem should go in here
    # TODO - wrap in it's own method - in prep for going to file or faker gem
    # Preping the attributes
    insert_string = "Blah1234"                            # default string in attributes
    reject_attribs = ["id", "created_at", "updated_at"]   # Attributes to filter
    
    # TODO - this belongs in AutoSeed 2 & 3 but not 1 ... which means they need a sub-superClass to implement it
    # TODO - this chunk could be one method - might have to in order to implement inheriting class
    models.each do | model_name |
      # STUB for the inheriting class to run here
      # ensure positive integer passes to next
      reps = params['REPS'].present? ? params['REPS'].to_i : 1
      generate_seeding(model_name, reps)
    end
  end
  
  def self.generate_seeding(model_name)
    # name = self.method(self).name
    raise Error.new("Generate requires subclass to over with instructions.")
  end
end