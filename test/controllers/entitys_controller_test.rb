require 'test_helper'

class EntitysControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get entitys_show_url
    assert_response :success
  end

end
