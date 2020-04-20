require 'test_helper'

class ShottsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shott = shotts(:one)
  end

  test "should get index" do
    get shotts_url
    assert_response :success
  end

  test "should get new" do
    get new_shott_url
    assert_response :success
  end

  test "should create shott" do
    assert_difference('Shott.count') do
      post shotts_url, params: { shott: { description: @shott.description, title: @shott.title, user_id: @shott.user_id } }
    end

    assert_redirected_to shott_url(Shott.last)
  end

  test "should show shott" do
    get shott_url(@shott)
    assert_response :success
  end

  test "should get edit" do
    get edit_shott_url(@shott)
    assert_response :success
  end

  test "should update shott" do
    patch shott_url(@shott), params: { shott: { description: @shott.description, title: @shott.title, user_id: @shott.user_id } }
    assert_redirected_to shott_url(@shott)
  end

  test "should destroy shott" do
    assert_difference('Shott.count', -1) do
      delete shott_url(@shott)
    end

    assert_redirected_to shotts_url
  end
end
