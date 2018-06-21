require 'test_helper'

class Comment20sControllerTest < ActionController::TestCase
  setup do
    @comment20 = comment20s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comment20s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment20" do
    assert_difference('Comment20.count') do
      post :create, comment20: { content: @comment20.content, post_id: @comment20.post_id, something: @comment20.something, something_more: @comment20.something_more, somethingelse: @comment20.somethingelse }
    end

    assert_redirected_to comment20_path(assigns(:comment20))
  end

  test "should show comment20" do
    get :show, id: @comment20
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment20
    assert_response :success
  end

  test "should update comment20" do
    patch :update, id: @comment20, comment20: { content: @comment20.content, post_id: @comment20.post_id, something: @comment20.something, something_more: @comment20.something_more, somethingelse: @comment20.somethingelse }
    assert_redirected_to comment20_path(assigns(:comment20))
  end

  test "should destroy comment20" do
    assert_difference('Comment20.count', -1) do
      delete :destroy, id: @comment20
    end

    assert_redirected_to comment20s_path
  end
end
