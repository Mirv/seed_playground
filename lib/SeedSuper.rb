class SeedSuper
  def self.generate(params = {})
    # If migrations pending - why bother doing anything else?
    raise Error.new("Migrations Pending") if ActiveRecord::Migration.check_pending!
    models = ModelDiscovery.find_models(params['ONLY'], params['EXCLUDE'])
 


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
    # TODO - feed class name & method name into the Error message
    raise Error.new("Generate requires subclass to over with instructions.")
  end
end