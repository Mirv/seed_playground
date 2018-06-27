require 'benchmark'
require 'AutoSeed'    # TODO - need to dynamically handle this?
load '../lib/AutoSeed2.rb' # TODO - need to figure out why can't require this?
load '../lib/AutoFileLogger.rb' # TODO - need to figure out why can't require this?
load '../lib/AutoSeed3.rb' # TODO - need to figure out why can't require this?

class TestRun 
  # Send attributes to the eigenClass  
  class << self
    attr_accessor :tests
  end
  
  @test_defaults = {
    one: AutoSeed.method(:generate),
    two: AutoSeed2.method(:generate),
    three: AutoSeed3.method(:generate)
  }
  

  def self.test_run(params = {})
    @tests = params.merge(@test_defaults)
    @logging = AutoFileLogger.new(folder: "benchmark")
    time_test
  end

  def self.time_test
    @tests.each do |x, y|
      t = timer do
        y.call
      end 
      target_test = @logging.logger(@tests[x], y.name)
      write_test_result(target_test, t)
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
