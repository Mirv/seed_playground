require 'benchmark'
require 'AutoSeed'    # TODO - need to dynamically handle this?
# require 'logger'
# require 'SpeedLogger'
load '../lib/AutoFileLogger.rb'
# require 'AutoFileLogger'


class TestRun 
  
  # TODO - class pulls @test array to handle storage
  def self.create_logfile(target)
    # Task create the name of the log file based on the class tested
    name = @tests[target].to_s.split(" ").last.split('.').first
  end
  
    @tests = {
      one: AutoSeed.method(:generate),
      two: AutoSeed2.method(:generate),
      three: AutoSeed3.method(:generate)
    }
    @logging = AutoFileLogger.new(folder: "benchmark")



  # Send both attributes to the eigenClass  
  class << self
    attr_accessor :tests
  end

  def self.test_run
    # initialize
    time_test
  end

  def self.time_test
    @tests.each do |x, y|
      t = timer do
        y.call
      end 
      write_test_result(x,t)
    end
  end
  
  def self.write_test_result(test, time)
    class_target = @tests[test].to_s.split(" ").last.split('.').first
    @logging.logger(class_target)
    @logging.write_log(class_target, "#{time.real.round(5)} - #{self.name}")
  end
  
  def self.timer
    Benchmark.measure {
      yield
    }
  end
  
  def self.format_times
  end
  
end
