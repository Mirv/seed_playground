require 'test_helper'

class Comment14sControllerTest < ActionController::TestCase
  setup do
    @comment14 = comment14s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comment14s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment14" do
    assert_difference('Comment14.count') do
      post :create, comment14: { content: @comment14.content, post_id: @comment14.post_id, something: @comment14.something, something_more: @comment14.something_more, somethingelse: @comment14.somethingelse }
    end

    assert_redirected_to comment14_path(assigns(:comment14))
  end

  test "should show comment14" do
    get :show, id: @comment14
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment14
    assert_response :success
  end

  test "should update comment14" do
    patch :update, id: @comment14, comment14: { content: @comment14.content, post_id: @comment14.post_id, something: @comment14.something, something_more: @comment14.something_more, somethingelse: @comment14.somethingelse }
    assert_redirected_to comment14_path(assigns(:comment14))
  end

  test "should destroy comment14" do
    assert_difference('Comment14.count', -1) do
      delete :destroy, id: @comment14
    end

    assert_redirected_to comment14s_path
  end
end
