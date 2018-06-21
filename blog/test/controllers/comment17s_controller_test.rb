require 'test_helper'

class Comment17sControllerTest < ActionController::TestCase
  setup do
    @comment17 = comment17s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comment17s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment17" do
    assert_difference('Comment17.count') do
      post :create, comment17: { content: @comment17.content, post_id: @comment17.post_id, something: @comment17.something, something_more: @comment17.something_more, somethingelse: @comment17.somethingelse }
    end

    assert_redirected_to comment17_path(assigns(:comment17))
  end

  test "should show comment17" do
    get :show, id: @comment17
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment17
    assert_response :success
  end

  test "should update comment17" do
    patch :update, id: @comment17, comment17: { content: @comment17.content, post_id: @comment17.post_id, something: @comment17.something, something_more: @comment17.something_more, somethingelse: @comment17.somethingelse }
    assert_redirected_to comment17_path(assigns(:comment17))
  end

  test "should destroy comment17" do
    assert_difference('Comment17.count', -1) do
      delete :destroy, id: @comment17
    end

    assert_redirected_to comment17s_path
  end
end
