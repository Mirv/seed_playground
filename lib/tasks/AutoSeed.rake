namespace :db do
  task :create_seeds => :environment do
    AutoSeed.generate(ENV)
  end
end