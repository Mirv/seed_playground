namespace :db do
  namespace :seed do
    task :generate => :environment do
        # AutoSeed.generate(ENV)
        puts 'Hi'
    end
  end
end