require 'test_helper'

class StMaFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @st_ma_file = st_ma_files(:one)
  end

  test "should get index" do
    get st_ma_files_url
    assert_response :success
  end

  test "should get new" do
    get new_st_ma_file_url
    assert_response :success
  end

  test "should create st_ma_file" do
    assert_difference('StMaFile.count') do
      post st_ma_files_url, params: { st_ma_file: { st_ma_cer_field: @st_ma_file.st_ma_cer_field, st_ma_cer_marks: @st_ma_file.st_ma_cer_marks, st_ma_cer_source: @st_ma_file.st_ma_cer_source, st_ma_cer_year: @st_ma_file.st_ma_cer_year, st_ma_extra_photo1: @st_ma_file.st_ma_extra_photo1, st_ma_extra_photo2: @st_ma_file.st_ma_extra_photo2, st_ma_offical_photo: @st_ma_file.st_ma_offical_photo, st_ma_passport_photo: @st_ma_file.st_ma_passport_photo, user_id: @st_ma_file.user_id } }
    end

    assert_redirected_to st_ma_file_url(StMaFile.last)
  end

  test "should show st_ma_file" do
    get st_ma_file_url(@st_ma_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_st_ma_file_url(@st_ma_file)
    assert_response :success
  end

  test "should update st_ma_file" do
    patch st_ma_file_url(@st_ma_file), params: { st_ma_file: { st_ma_cer_field: @st_ma_file.st_ma_cer_field, st_ma_cer_marks: @st_ma_file.st_ma_cer_marks, st_ma_cer_source: @st_ma_file.st_ma_cer_source, st_ma_cer_year: @st_ma_file.st_ma_cer_year, st_ma_extra_photo1: @st_ma_file.st_ma_extra_photo1, st_ma_extra_photo2: @st_ma_file.st_ma_extra_photo2, st_ma_offical_photo: @st_ma_file.st_ma_offical_photo, st_ma_passport_photo: @st_ma_file.st_ma_passport_photo, user_id: @st_ma_file.user_id } }
    assert_redirected_to st_ma_file_url(@st_ma_file)
  end

  test "should destroy st_ma_file" do
    assert_difference('StMaFile.count', -1) do
      delete st_ma_file_url(@st_ma_file)
    end

    assert_redirected_to st_ma_files_url
  end
end
