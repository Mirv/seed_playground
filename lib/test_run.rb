require 'benchmark'
require 'AutoSeed'    # TODO - need to dynamically handle this?
load '../lib/AutoSeed/v1/AutoSeed.rb' # TODO - need to figure out why can't require this?
load '../lib/AutoSeed/v1/AutoSeed2.rb' # TODO - need to figure out why can't require this?
load '../lib/AutoSeed/v1/AutoSeed3.rb' # TODO - need to figure out why can't require this?
load '../lib/AutoSeed/v2/SeedSuper.rb'
load '../lib/AutoSeed/v2/AutoSeed4.rb'
load '../lib/AutoSeed/v2/model_discovery.rb'
load '../lib/AutoFileLogger.rb'

class TestRun 
  # Send attributes to the eigenClass  
  class << self
    attr_accessor :tests
  end
  
  @test_defaults = {
    AutoSeed: AutoSeed.method(:generate),
    AutoSeed2: AutoSeed2.method(:generate),
    AutoSeed3: AutoSeed3.method(:generate),
    AutoSeed4: AutoSeed4.method(:generate)
  }
  
  def self.test_run(params = {})
    @tests = params.merge(@test_defaults)
    @logging = AutoFileLogger.new(folder: "benchmark")
    time_test
  end

  def self.time_test
    @tests.each do |x, y|
      t = timer do
        puts y.class.name
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
