require 'benchmark'
require 'AutoSeed'
require 'logger'

class TestRun 
  
  # TODO - change that class relies on class Target to operate array indexes
  def self.my_logger(target)
    # @my_logger ||= Logger.new("#{Rails.root}/log/speed_check2.log")
    # @my_logger[target] ||= create_logfile
    if @my_logger[target] 
      @my_logger[target] 
    else
      create_logfile(target)
    end
  end
  
  # TODO - class pulls @test array to handle storage
  def self.create_logfile(target)
    name = @tests[target].to_s.split(" ").last.split('.').first
    name = "#{Rails.root}/log/#{name}.log"
    Logger.new(name)
    # TODO - use this ...
    # Logger.new(File.join(Rails.root, 'log', name, '.log'))

  end
  
    @logs ={}    # Class variable as it must persist
    @tests = {
      one: AutoSeed.method(:generate),
      two: AutoSeed2.method(:generate),
      three: AutoSeed3.method(:generate)
    }
    
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
    my_logger[test]
    my_logger[test].info("#{class_target}, #{time.real.round(5)} - #{self.name}")
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