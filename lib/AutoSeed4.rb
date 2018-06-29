class AutoSeed4 < SeedSuper

  
  def self.generate_seeding(model_name, reps = 1)
    # Preping the attributes
    insert_string = "1234"                        # default string in attributes
    reject_attribs = ["id", "created_at", "updated_at"]  # Attributes to filter
    model = model_name.classify.constantize             # setup model to call
    attribs = model.column_names - reject_attribs       # drop extra db columns 
    attribs = attribs.map {|x| [x, insert_string]}.to_h # setup hash of columns
    reps.times do
      result = model.create!(attribs)                     # save error msgs 
      puts result if result.errors.present?               # output errors
    end
  end
end
  

