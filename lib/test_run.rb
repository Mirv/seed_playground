require 'benchmark'
require 'AutoSeed'
require 'logger'

class TestRun 
  def self.my_logger(target)
    # @my_logger ||= Logger.new("#{Rails.root}/log/speed_check2.log")
    @my_logger[target] ||= Logger.new("#{Rails.root}/log/#{target}.log")
  end
  
  
  @logs ={}    # Class variable as it must persist
  @tests = {
    one: AutoSeed.method(:generate), 
    two: AutoSeed2.method(:generate),
    three: AutoSeed3.method(:generate)
  }
  #  Tracking arrays for test being inserted to the class variable logs
  @tests.each{|x, y| @logs[x]= []}
  # @tests

  # Send both attributes to the eigenClass  
  class << self
    attr_accessor :tests, :logs
  end

  def self.test_run
    time_test
  end

  def self.time_test
    @tests.each do |x, y|
      @logs[x] << timer do 
        y.call
      end 
    end
    report_results
  end
  
  def self.report_results
    @logs.each do |key, value| 
      puts "--Test #{key}'s count: #{@logs[key].count}" 
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