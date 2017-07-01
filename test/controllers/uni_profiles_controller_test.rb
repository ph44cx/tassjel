require 'test_helper'

class UniProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @uni_profile = uni_profiles(:one)
  end

  test "should get index" do
    get uni_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_uni_profile_url
    assert_response :success
  end

  test "should create uni_profile" do
    assert_difference('UniProfile.count') do
      post uni_profiles_url, params: { uni_profile: { uni_address: @uni_profile.uni_address, uni_description: @uni_profile.uni_description, uni_email: @uni_profile.uni_email, uni_fax: @uni_profile.uni_fax, uni_founded_date: @uni_profile.uni_founded_date, uni_galaries: @uni_profile.uni_galaries, uni_log_rank: @uni_profile.uni_log_rank, uni_logo: @uni_profile.uni_logo, uni_phone1: @uni_profile.uni_phone1, uni_phone2: @uni_profile.uni_phone2, uni_url: @uni_profile.uni_url } }
    end

    assert_redirected_to uni_profile_url(UniProfile.last)
  end

  test "should show uni_profile" do
    get uni_profile_url(@uni_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_uni_profile_url(@uni_profile)
    assert_response :success
  end

  test "should update uni_profile" do
    patch uni_profile_url(@uni_profile), params: { uni_profile: { uni_address: @uni_profile.uni_address, uni_description: @uni_profile.uni_description, uni_email: @uni_profile.uni_email, uni_fax: @uni_profile.uni_fax, uni_founded_date: @uni_profile.uni_founded_date, uni_galaries: @uni_profile.uni_galaries, uni_log_rank: @uni_profile.uni_log_rank, uni_logo: @uni_profile.uni_logo, uni_phone1: @uni_profile.uni_phone1, uni_phone2: @uni_profile.uni_phone2, uni_url: @uni_profile.uni_url } }
    assert_redirected_to uni_profile_url(@uni_profile)
  end

  test "should destroy uni_profile" do
    assert_difference('UniProfile.count', -1) do
      delete uni_profile_url(@uni_profile)
    end

    assert_redirected_to uni_profiles_url
  end
end
