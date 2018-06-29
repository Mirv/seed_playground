class ModelDiscovery
  def self.find_models(only_models, ignore_models)
    Rails.application.eager_load!                     # Ensures models loaded
    reject_models = ["ActiveRecord::SchemaMigration"] # problematic model
    reject_models << ignore_models.split(',') if ignore_models
    models = ActiveRecord::Base.descendants.map(&:name) - reject_models.flatten 
    # lower priority & versus && or and ensures models only keeps good ones
    models = models & only_models.split(',') if only_models
    return models   # return required here currently
  end
end