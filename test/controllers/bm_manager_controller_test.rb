require 'test_helper'

class BmManagerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bm_manager_index_url
    assert_response :success
  end

end
