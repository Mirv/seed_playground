require 'test_helper'

class Comment6sControllerTest < ActionController::TestCase
  setup do
    @comment6 = comment6s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comment6s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment6" do
    assert_difference('Comment6.count') do
      post :create, comment6: { content: @comment6.content, more: @comment6.more, post_id: @comment6.post_id, something: @comment6.something, something: @comment6.something, somethingelse: @comment6.somethingelse }
    end

    assert_redirected_to comment6_path(assigns(:comment6))
  end

  test "should show comment6" do
    get :show, id: @comment6
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment6
    assert_response :success
  end

  test "should update comment6" do
    patch :update, id: @comment6, comment6: { content: @comment6.content, more: @comment6.more, post_id: @comment6.post_id, something: @comment6.something, something: @comment6.something, somethingelse: @comment6.somethingelse }
    assert_redirected_to comment6_path(assigns(:comment6))
  end

  test "should destroy comment6" do
    assert_difference('Comment6.count', -1) do
      delete :destroy, id: @comment6
    end

    assert_redirected_to comment6s_path
  end
end
