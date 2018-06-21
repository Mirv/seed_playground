require 'test_helper'

class Comment15sControllerTest < ActionController::TestCase
  setup do
    @comment15 = comment15s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comment15s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment15" do
    assert_difference('Comment15.count') do
      post :create, comment15: { content: @comment15.content, post_id: @comment15.post_id, something: @comment15.something, something_more: @comment15.something_more, somethingelse: @comment15.somethingelse }
    end

    assert_redirected_to comment15_path(assigns(:comment15))
  end

  test "should show comment15" do
    get :show, id: @comment15
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment15
    assert_response :success
  end

  test "should update comment15" do
    patch :update, id: @comment15, comment15: { content: @comment15.content, post_id: @comment15.post_id, something: @comment15.something, something_more: @comment15.something_more, somethingelse: @comment15.somethingelse }
    assert_redirected_to comment15_path(assigns(:comment15))
  end

  test "should destroy comment15" do
    assert_difference('Comment15.count', -1) do
      delete :destroy, id: @comment15
    end

    assert_redirected_to comment15s_path
  end
end
