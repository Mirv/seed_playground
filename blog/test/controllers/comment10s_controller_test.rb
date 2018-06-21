require 'test_helper'

class Comment10sControllerTest < ActionController::TestCase
  setup do
    @comment10 = comment10s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comment10s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment10" do
    assert_difference('Comment10.count') do
      post :create, comment10: { content: @comment10.content, more: @comment10.more, post_id: @comment10.post_id, something: @comment10.something, something: @comment10.something, somethingelse: @comment10.somethingelse }
    end

    assert_redirected_to comment10_path(assigns(:comment10))
  end

  test "should show comment10" do
    get :show, id: @comment10
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment10
    assert_response :success
  end

  test "should update comment10" do
    patch :update, id: @comment10, comment10: { content: @comment10.content, more: @comment10.more, post_id: @comment10.post_id, something: @comment10.something, something: @comment10.something, somethingelse: @comment10.somethingelse }
    assert_redirected_to comment10_path(assigns(:comment10))
  end

  test "should destroy comment10" do
    assert_difference('Comment10.count', -1) do
      delete :destroy, id: @comment10
    end

    assert_redirected_to comment10s_path
  end
end
