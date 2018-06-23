namespace :db do
  namespace :seed do
    desc "test the speed of AutoSeed"
    task :spdtest => :environment do
      puts Dir.pwd
      FileUtils.mkdir_p('log/benchmark') unless File.directory?('log/benchmark')  
      # touch 'benchmarks/'
      load '../lib/AutoSeed.rb'
      require 'AutoSeed'
      load '../lib/test_run.rb'
      # require 'TestRun'
      TestRun.test_run()
    end

    namespace :m do
      desc "generate seed original"
      task :generate => :environment do
          AutoSeed.generate(ENV)
      end
      desc "2nd seeding task with methods"
      task :generate2 => :environment do
          load '../lib/AutoSeed.rb'
          require 'AutoSeed'
          puts "Entering the gen2"
          AutoSeed2.generate(ENV)
      end
    end
  end
end

        
