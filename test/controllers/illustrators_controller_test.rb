require 'test_helper'

class IllustratorsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get illustrators_show_url
    assert_response :success
  end

end
