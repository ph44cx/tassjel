require 'test_helper'

class StPhdFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @st_phd_file = st_phd_files(:one)
  end

  test "should get index" do
    get st_phd_files_url
    assert_response :success
  end

  test "should get new" do
    get new_st_phd_file_url
    assert_response :success
  end

  test "should create st_phd_file" do
    assert_difference('StPhdFile.count') do
      post st_phd_files_url, params: { st_phd_file: { st_maba_cer_field: @st_phd_file.st_maba_cer_field, st_maba_cer_marks: @st_phd_file.st_maba_cer_marks, st_maba_cer_source: @st_phd_file.st_maba_cer_source, st_maba_cer_year: @st_phd_file.st_maba_cer_year, st_maphd_cer_field: @st_phd_file.st_maphd_cer_field, st_maphd_cer_marks: @st_phd_file.st_maphd_cer_marks, st_maphd_cer_source: @st_phd_file.st_maphd_cer_source } }
    end

    assert_redirected_to st_phd_file_url(StPhdFile.last)
  end

  test "should show st_phd_file" do
    get st_phd_file_url(@st_phd_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_st_phd_file_url(@st_phd_file)
    assert_response :success
  end

  test "should update st_phd_file" do
    patch st_phd_file_url(@st_phd_file), params: { st_phd_file: { st_maba_cer_field: @st_phd_file.st_maba_cer_field, st_maba_cer_marks: @st_phd_file.st_maba_cer_marks, st_maba_cer_source: @st_phd_file.st_maba_cer_source, st_maba_cer_year: @st_phd_file.st_maba_cer_year, st_maphd_cer_field: @st_phd_file.st_maphd_cer_field, st_maphd_cer_marks: @st_phd_file.st_maphd_cer_marks, st_maphd_cer_source: @st_phd_file.st_maphd_cer_source } }
    assert_redirected_to st_phd_file_url(@st_phd_file)
  end

  test "should destroy st_phd_file" do
    assert_difference('StPhdFile.count', -1) do
      delete st_phd_file_url(@st_phd_file)
    end

    assert_redirected_to st_phd_files_url
  end
end
