require 'test_helper'

class Comment18sControllerTest < ActionController::TestCase
  setup do
    @comment18 = comment18s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comment18s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment18" do
    assert_difference('Comment18.count') do
      post :create, comment18: { content: @comment18.content, post_id: @comment18.post_id, something: @comment18.something, something_more: @comment18.something_more, somethingelse: @comment18.somethingelse }
    end

    assert_redirected_to comment18_path(assigns(:comment18))
  end

  test "should show comment18" do
    get :show, id: @comment18
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment18
    assert_response :success
  end

  test "should update comment18" do
    patch :update, id: @comment18, comment18: { content: @comment18.content, post_id: @comment18.post_id, something: @comment18.something, something_more: @comment18.something_more, somethingelse: @comment18.somethingelse }
    assert_redirected_to comment18_path(assigns(:comment18))
  end

  test "should destroy comment18" do
    assert_difference('Comment18.count', -1) do
      delete :destroy, id: @comment18
    end

    assert_redirected_to comment18s_path
  end
end
