require 'test_helper'

class UnmDashControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get unm_dash_index_url
    assert_response :success
  end

end
