require 'benchmark'
require 'AutoSeed'    # TODO - need to dynamically handle this?
# require 'logger'
# require 'SpeedLogger'
require '../lib/SpeedLogger.rb'
# require 'SpeedLogger'


class TestRun 
  
  # TODO - class pulls @test array to handle storage
  def self.create_logfile(target)
    # Task create the name of the log file based on the class tested
    name = @tests[target].to_s.split(" ").last.split('.').first
  end
  
    @logs ={}    # Class variable as it must persist
    @tests = {
      # one: AutoSeed.method(:generate),
      two: AutoSeed2.method(:generate),
      # three: AutoSeed3.method(:generate)
    }
    # byebug
    @logging = ::SpeedLogger.new(folder: "benchmark")
    
    
    #  Tracking arrays for test being inserted to the class variable logs
    @tests.each{|x, y| @logs[x]= []}

  # Send both attributes to the eigenClass  
  class << self
    attr_accessor :tests, :logs
  end

  def self.test_run
    # initialize
    time_test
  end

  def self.time_test
    @tests.each do |x, y|
      # @logs[x] << timer do 
      t=[]
      t << timer do
        y.call
      end 
      write_test_result(x,t)
    end
    # report_results  # TODO - remove or uncomment after redefining
  end
  
  def self.write_test_result(test, time)
    class_target = @tests[test].to_s.split(" ").last.split('.').first
    @logging.logger(class_target)
    @logging.write_log(class_target, "#{time.first.real.round(5)} - #{self.name}")
    # my_logger[test]
    # my_logger[test].info("#{class_target}, #{time.real.round(5)} - #{self.name}")
  end
  
  # TODO - remove or redefine without @logs
  def self.report_results
    @logs.each do |key, value| 
      class_target = @tests[key].to_s.split(" ").last.split('.').first
      formatted_time = @logs[key].first.real.round(5)
      my_logger.info("#{class_target}, #{formatted_time} - #{self.name}")
    end
  end

  def self.timer
    Benchmark.measure {
      yield
    }
  end
  
  def self.format_times
  end
  
end




    # puts "First:  #{@logs[:one].count}"
    # puts "Second #{@logs[:two].count}"
    # puts "Third #{@logs[:three].count}"