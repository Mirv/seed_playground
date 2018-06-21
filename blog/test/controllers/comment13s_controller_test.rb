require 'test_helper'

class Comment13sControllerTest < ActionController::TestCase
  setup do
    @comment13 = comment13s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comment13s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment13" do
    assert_difference('Comment13.count') do
      post :create, comment13: { content: @comment13.content, post_id: @comment13.post_id, something: @comment13.something, something_more: @comment13.something_more, somethingelse: @comment13.somethingelse }
    end

    assert_redirected_to comment13_path(assigns(:comment13))
  end

  test "should show comment13" do
    get :show, id: @comment13
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment13
    assert_response :success
  end

  test "should update comment13" do
    patch :update, id: @comment13, comment13: { content: @comment13.content, post_id: @comment13.post_id, something: @comment13.something, something_more: @comment13.something_more, somethingelse: @comment13.somethingelse }
    assert_redirected_to comment13_path(assigns(:comment13))
  end

  test "should destroy comment13" do
    assert_difference('Comment13.count', -1) do
      delete :destroy, id: @comment13
    end

    assert_redirected_to comment13s_path
  end
end
