# TODO relies on rake to load files for us

class ARDiscovery
  def self.find_models(only_models, ignore_models)
    raise Error.new("Migrations Pending") if ActiveRecord::Migration.check_pending!
    Rails.application.eager_load!                     # Ensures models loaded
    reject_models = ["ActiveRecord::SchemaMigration"]
    model_list = ActiveRecord::Base.descendants
    if only_models.present?
      return models = model_list.select{|x| only_models.include? x.name}
    elsif ignore_models.present?
      reject_models << ignore_models.split(',') 
      reject_models.flatten!
    end
    models = model_list.reject{|x| reject_models.include? x.name}
    return models   # return required here currently
  end
  
  def self.prep_stats
    models = find_models(nil, nil)
    counters = models.sum { |x| x.column_names.count }
    return "models: #{models.count}, columns: #{counters}"
  end
end

