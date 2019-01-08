require './spec/minitest_helper.rb'
require './lib/asynchronize.rb'
require 'test_helper'

  # tests to write
  # If only_models is blank
  # If ignore_models is blank
  # Models in eager load path
  

class ARDiscoveryTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  
  test "raise error if not eager loading" do
    assert false
  end

  test "should migration pending error" do
    # TODO - tie in for active record in requires
    # # some_undefined_variable is not defined elsewhere in the test case
    # assert_raises(ActiveRecord::PendingMigrationError) do
    #   ActiveRecord::Migration.check_pending!(connection) 
    # end
  end

  test "should eager load the models" do
      
  end

end