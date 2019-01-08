require 'test_helper'


class ARDiscoveryTest < Minitest::Test
  def the_truth
    assert true
  end
  
  # test "raise error if not eager loading" do
  def more_truth
    assert true, true
  end

  # test "should migration pending error" do
  def should_migration_pending_error
    # TODO - tie in for active record in requires
    # # some_undefined_variable is not defined elsewhere in the test case
    # assert_raises(ActiveRecord::PendingMigrationError) do
    #   ActiveRecord::Migration.check_pending!(connection) 
    # end
  end

  # test "should eager load the models" do
  def should_eager_load_the_models
    byebug
    assert @app['path'].exists?, true
    # Check for conditions before test? aka fails
    # Call to green the test
    # ... Rails.application.eager_load! 
    # Assert something
    # ... '/app/models' in the PATH?
  end
end