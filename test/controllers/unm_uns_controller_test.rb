require 'test_helper'

class UnmUnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unm_un = unm_uns(:one)
  end

  test "should get index" do
    get unm_uns_url
    assert_response :success
  end

  test "should get new" do
    get new_unm_un_url
    assert_response :success
  end

  test "should create unm_un" do
    assert_difference('UnmUn.count') do
      post unm_uns_url, params: { unm_un: { uni_city: @unm_un.uni_city, uni_country: @unm_un.uni_country, uni_faculties_name: @unm_un.uni_faculties_name, uni_faculties_number: @unm_un.uni_faculties_number, uni_faculties_speciality: @unm_un.uni_faculties_speciality, uni_inst_private_fees: @unm_un.uni_inst_private_fees, uni_inst_state_ava_fees: @unm_un.uni_inst_state_ava_fees, uni_institution_number: @unm_un.uni_institution_number, uni_institution_speciality: @unm_un.uni_institution_speciality, uni_institutions_name: @unm_un.uni_institutions_name, uni_name: @unm_un.uni_name, uni_private_den_ava_fees: @unm_un.uni_private_den_ava_fees, uni_private_eng_ava_fees: @unm_un.uni_private_eng_ava_fees, uni_private_lit_ava_fees: @unm_un.uni_private_lit_ava_fees, uni_private_med_ava_fees: @unm_un.uni_private_med_ava_fees, uni_sector: @unm_un.uni_sector, uni_state_ava_fees: @unm_un.uni_state_ava_fees } }
    end

    assert_redirected_to unm_un_url(UnmUn.last)
  end

  test "should show unm_un" do
    get unm_un_url(@unm_un)
    assert_response :success
  end

  test "should get edit" do
    get edit_unm_un_url(@unm_un)
    assert_response :success
  end

  test "should update unm_un" do
    patch unm_un_url(@unm_un), params: { unm_un: { uni_city: @unm_un.uni_city, uni_country: @unm_un.uni_country, uni_faculties_name: @unm_un.uni_faculties_name, uni_faculties_number: @unm_un.uni_faculties_number, uni_faculties_speciality: @unm_un.uni_faculties_speciality, uni_inst_private_fees: @unm_un.uni_inst_private_fees, uni_inst_state_ava_fees: @unm_un.uni_inst_state_ava_fees, uni_institution_number: @unm_un.uni_institution_number, uni_institution_speciality: @unm_un.uni_institution_speciality, uni_institutions_name: @unm_un.uni_institutions_name, uni_name: @unm_un.uni_name, uni_private_den_ava_fees: @unm_un.uni_private_den_ava_fees, uni_private_eng_ava_fees: @unm_un.uni_private_eng_ava_fees, uni_private_lit_ava_fees: @unm_un.uni_private_lit_ava_fees, uni_private_med_ava_fees: @unm_un.uni_private_med_ava_fees, uni_sector: @unm_un.uni_sector, uni_state_ava_fees: @unm_un.uni_state_ava_fees } }
    assert_redirected_to unm_un_url(@unm_un)
  end

  test "should destroy unm_un" do
    assert_difference('UnmUn.count', -1) do
      delete unm_un_url(@unm_un)
    end

    assert_redirected_to unm_uns_url
  end
end
