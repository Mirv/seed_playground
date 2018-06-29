class ModelDiscovery
  def self.find_models(only_models, ignore_models)
    Rails.application.eager_load!                     # Ensures models loaded
    reject_models = ["ActiveRecord::SchemaMigration"]
    reject_models << ignore_models.split(',') if ignore_models
    models = ActiveRecord::Base.descendants.map(&:name) - reject_models.flatten 
    models = models & only_models.split(',') if only_models
    return models
    # puts models
  end
end