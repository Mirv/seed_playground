require 'test_helper'

class Comment9sControllerTest < ActionController::TestCase
  setup do
    @comment9 = comment9s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comment9s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment9" do
    assert_difference('Comment9.count') do
      post :create, comment9: { content: @comment9.content, more: @comment9.more, post_id: @comment9.post_id, something: @comment9.something, something: @comment9.something, somethingelse: @comment9.somethingelse }
    end

    assert_redirected_to comment9_path(assigns(:comment9))
  end

  test "should show comment9" do
    get :show, id: @comment9
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment9
    assert_response :success
  end

  test "should update comment9" do
    patch :update, id: @comment9, comment9: { content: @comment9.content, more: @comment9.more, post_id: @comment9.post_id, something: @comment9.something, something: @comment9.something, somethingelse: @comment9.somethingelse }
    assert_redirected_to comment9_path(assigns(:comment9))
  end

  test "should destroy comment9" do
    assert_difference('Comment9.count', -1) do
      delete :destroy, id: @comment9
    end

    assert_redirected_to comment9s_path
  end
end
