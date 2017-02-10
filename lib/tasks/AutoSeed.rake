namespace :db do
  task :create_seeds => :environment do
    Foo.bar
  end
end