require 'test_helper'

class Comment7sControllerTest < ActionController::TestCase
  setup do
    @comment7 = comment7s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comment7s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment7" do
    assert_difference('Comment7.count') do
      post :create, comment7: { content: @comment7.content, more: @comment7.more, post_id: @comment7.post_id, something: @comment7.something, something: @comment7.something, somethingelse: @comment7.somethingelse }
    end

    assert_redirected_to comment7_path(assigns(:comment7))
  end

  test "should show comment7" do
    get :show, id: @comment7
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment7
    assert_response :success
  end

  test "should update comment7" do
    patch :update, id: @comment7, comment7: { content: @comment7.content, more: @comment7.more, post_id: @comment7.post_id, something: @comment7.something, something: @comment7.something, somethingelse: @comment7.somethingelse }
    assert_redirected_to comment7_path(assigns(:comment7))
  end

  test "should destroy comment7" do
    assert_difference('Comment7.count', -1) do
      delete :destroy, id: @comment7
    end

    assert_redirected_to comment7s_path
  end
end
