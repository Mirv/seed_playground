namespace :db do
  namespace :seed do
    desc "test the speed of AutoSeed"
    task :spdtest => :environment do
      puts "Rake directory is #{Dir.pwd}"
      FileUtils.mkdir_p('log/benchmark') unless File.directory?('log/benchmark')  
      load '../lib/test_run.rb'

      TestRun.test_run(ENV)
      puts "~Fin (Rake)"
      Logger
    end

    namespace :m do
      desc "generate seed original"
      task :generate => :environment do
        AutoSeed.generate(ENV)
      end
      desc "2nd seeding task with methods"
      task :generate2 => :environment do
        load '../lib/AutoSeed2.rb'
        AutoSeed2.generate(ENV)
      end
      desc "2nd seeding task with methods"
      task :generate4 => :environment do
        puts Post.count
        AutoSeed4.generate(ENV)
        puts Post.count
      end
    end
  end
end

        
