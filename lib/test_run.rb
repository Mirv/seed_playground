require 'benchmark'
require 'AutoSeed'    # TODO - need to dynamically handle this?
load '../lib/AutoFileLogger.rb' # TODO - need to figure out why can't require this?

class TestRun 
  
  # TODO - class pulls @test array to handle storage
  def self.create_logfile(target)
    # Task create the name of the log file based on the class tested
    name = @tests[target].to_s.split(" ").last.split('.').first
  end
  
  @tests = {
    # one: AutoSeed.method(:generate),
    two: AutoSeed2.method(:generate),
    three: AutoSeed3.method(:generate)
  }
  @logging = AutoFileLogger.new(folder: "benchmark")

  # Send both attributes to the eigenClass  
  class << self
    attr_accessor :tests
  end

  def self.test_run
    time_test
  end

  def self.time_test
    @tests.each do |x, y|
      t = timer do
        y.call
      end 
      test = @tests[x].to_s.split(" ").last.split('.').first
      @logging.logger(test)   # TODO - figure out why I have to initialize this explicitly
      write_test_result(test,t)
    end
  end
  
  # Formatting on the messages
  def self.write_test_result(test, time)
    @logging.write_log(test, "#{time.real.round(5)} - #{self.name}")
  end
  
  def self.timer
    Benchmark.measure {
      yield
    }
  end

end
