# TODO relies on rake to load files for us

class SeedSuper
  def self.generate(params = {})
    # If migrations pending - why bother doing anything else?
    raise Error.new("Migrations Pending") if ActiveRecord::Migration.check_pending!
    models = ModelDiscovery.find_models(params['ONLY'], params['EXCLUDE'])
    models.each do | model_name |
      # ensure positive integer passes to next
      reps = params['REPS'].present? ? params['REPS'].to_i : 1
      # STUB for the inheriting class to run here
      generate_seeding(model_name, reps)
    end
  end
  
  def self.generate_seeding(model_name)
    # name = self.method(self).name
    # TODO - feed class name & method name into the Error message
    raise Error.new("Generate requires subclass to over with instructions.")
  end
end