require 'benchmark'
require 'AutoSeed'
require 'logger'

class TestRun 
  def self.my_logger
    @@my_logger ||= Logger.new("#{Rails.root}/log/speed_check.log")
  end
  
  
  @@logs ={}    # Class variable as it must persist
  @tests = {
    one: AutoSeed.method(:generate), 
    two: AutoSeed2.method(:generate),
    three: AutoSeed3.method(:generate)
  }
  #  Tracking arrays for test being inserted to the class variable logs
  @tests.each{|x, y| @@logs[x]= []}

  # Send both attributes to the eigenClass  
  class << self
    attr_accessor :tests, :logs
  end

  def self.test_run
    time_test
  end

  def self.time_test
    @tests.each do |x, y|
      t = timer do
        y.call
      end 
      @@logs[x] << t
      @@logs.map{|key, value| puts "--Test #{key}'s count: #{@@logs[x].count}" }
      class_target = y.to_s.split(" ").last.split('.').first
      my_logger.info("#{class_target}, #{t.real} --- #{self.name}")
      # byebug
    end
  end

  def self.timer
    Benchmark.measure {
      yield
    }
  end
  
end




    # puts "First:  #{@@logs[:one].count}"
    # puts "Second #{@@logs[:two].count}"
    # puts "Third #{@@logs[:three].count}"