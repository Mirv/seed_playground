namespace :db do
  task :create_seeds => :environment do
    Foo.bar(ENV)
  end
end