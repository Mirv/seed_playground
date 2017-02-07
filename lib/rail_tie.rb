 class Railtie < Rails::Railtie

    rake_tasks do
      load "tasks/seeding_tasks.rake"
    end

  end