# TODO relies on rake to load files for us

class ModelDiscovery
  def self.find_models(only_models, ignore_models)
    Rails.application.eager_load!                     # Ensures models loaded
    if(only_models.nil?)
      reject_models = ["ActiveRecord::SchemaMigration"] # problematic model
      reject_models << ignore_models.split(',').trim if ignore_models
      models = ActiveRecord::Base.descendants.map(&:name) - reject_models.flatten 
    else
      # lower priority & versus && or and ensures models only keeps good ones
      models = only_models.split(',').strip
    end
    return models   # return required here currently
  end
end

