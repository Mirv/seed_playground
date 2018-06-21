require 'test_helper'

class Comment11sControllerTest < ActionController::TestCase
  setup do
    @comment11 = comment11s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comment11s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment11" do
    assert_difference('Comment11.count') do
      post :create, comment11: { content: @comment11.content, post_id: @comment11.post_id, something: @comment11.something, something_more: @comment11.something_more, somethingelse: @comment11.somethingelse }
    end

    assert_redirected_to comment11_path(assigns(:comment11))
  end

  test "should show comment11" do
    get :show, id: @comment11
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment11
    assert_response :success
  end

  test "should update comment11" do
    patch :update, id: @comment11, comment11: { content: @comment11.content, post_id: @comment11.post_id, something: @comment11.something, something_more: @comment11.something_more, somethingelse: @comment11.somethingelse }
    assert_redirected_to comment11_path(assigns(:comment11))
  end

  test "should destroy comment11" do
    assert_difference('Comment11.count', -1) do
      delete :destroy, id: @comment11
    end

    assert_redirected_to comment11s_path
  end
end
