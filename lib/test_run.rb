require 'benchmark'
require 'AutoSeed'    # TODO - need to dynamically handle this?
load '../lib/AutoSeed/v1/AutoSeed.rb' # TODO - need to figure out why can't require this?
load '../lib/AutoSeed/v1/AutoSeed2.rb' # TODO - need to figure out why can't require this?
load '../lib/AutoSeed/v1/AutoSeed3.rb' # TODO - need to figure out why can't require this?
load '../lib/AutoSeed/v2/SeedSuper.rb'
load '../lib/AutoSeed/v2/AutoSeed4.rb'
load '../lib/AutoSeed/v2/ar_discovery.rb'
load '../lib/MultiFileLogger.rb'

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
    @tests = @test_defaults
    # @tests = params.merge(@test_defaults) # TODO - allow merge of other test
    @logging = MultiFileLogger.new(folder: "benchmark")
    
    time_test(params['REPS'])
  end

  def self.time_test(reps)
    @tests.each do |x, y|
      t = timer do
        y.call
      end 
      target_test = @logging.logger(@tests[x], y.name)
      puts y.name
      write_test_result(target_test, t, reps)
    end
  end

  # Formatting on the messages
  def self.write_test_result(test, time, reps)
    models = ARDiscovery.find_models(nil, nil)
    counters = models.sum { |x| x.column_names.count }
    reps = reps ? reps : 1
    stats = "Repeat: #{reps} - #{ARDiscovery.prep_stats}"
    @logging.write_log(test, "#{time.real.round(5)} - #{stats}")
  end
  
  def self.timer
    Benchmark.measure {
      yield
    }
  end

end
