 class Railtie < Rails::Railtie

    rake_tasks do
      load "tasks/AutoSeed.rake"
    end

  end