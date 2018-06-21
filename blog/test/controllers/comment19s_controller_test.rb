require 'test_helper'

class Comment19sControllerTest < ActionController::TestCase
  setup do
    @comment19 = comment19s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comment19s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment19" do
    assert_difference('Comment19.count') do
      post :create, comment19: { content: @comment19.content, post_id: @comment19.post_id, something: @comment19.something, something_more: @comment19.something_more, somethingelse: @comment19.somethingelse }
    end

    assert_redirected_to comment19_path(assigns(:comment19))
  end

  test "should show comment19" do
    get :show, id: @comment19
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment19
    assert_response :success
  end

  test "should update comment19" do
    patch :update, id: @comment19, comment19: { content: @comment19.content, post_id: @comment19.post_id, something: @comment19.something, something_more: @comment19.something_more, somethingelse: @comment19.somethingelse }
    assert_redirected_to comment19_path(assigns(:comment19))
  end

  test "should destroy comment19" do
    assert_difference('Comment19.count', -1) do
      delete :destroy, id: @comment19
    end

    assert_redirected_to comment19s_path
  end
end
