require 'test_helper'

class ClickToTalksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:click_to_talks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create click_to_talk" do
    assert_difference('ClickToTalk.count') do
      post :create, :click_to_talk => { }
    end

    assert_redirected_to click_to_talk_path(assigns(:click_to_talk))
  end

  test "should show click_to_talk" do
    get :show, :id => click_to_talks(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => click_to_talks(:one).to_param
    assert_response :success
  end

  test "should update click_to_talk" do
    put :update, :id => click_to_talks(:one).to_param, :click_to_talk => { }
    assert_redirected_to click_to_talk_path(assigns(:click_to_talk))
  end

  test "should destroy click_to_talk" do
    assert_difference('ClickToTalk.count', -1) do
      delete :destroy, :id => click_to_talks(:one).to_param
    end

    assert_redirected_to click_to_talks_path
  end
end
