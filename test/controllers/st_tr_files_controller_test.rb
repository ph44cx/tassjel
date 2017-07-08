require 'test_helper'

class StTrFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @st_tr_file = st_tr_files(:one)
  end

  test "should get index" do
    get st_tr_files_url
    assert_response :success
  end

  test "should get new" do
    get new_st_tr_file_url
    assert_response :success
  end

  test "should create st_tr_file" do
    assert_difference('StTrFile.count') do
      post st_tr_files_url, params: { st_tr_file: { st_ma_un_field: @st_tr_file.st_ma_un_field, st_tr_extra_photo1: @st_tr_file.st_tr_extra_photo1, st_tr_extra_photo2: @st_tr_file.st_tr_extra_photo2, st_tr_photo1: @st_tr_file.st_tr_photo1, st_tr_photo2: @st_tr_file.st_tr_photo2, st_tr_un_name: @st_tr_file.st_tr_un_name, st_tr_un_name: @st_tr_file.st_tr_un_name, st_tr_un_sem: @st_tr_file.st_tr_un_sem, st_tr_un_source: @st_tr_file.st_tr_un_source, st_tr_un_target: @st_tr_file.st_tr_un_target } }
    end

    assert_redirected_to st_tr_file_url(StTrFile.last)
  end

  test "should show st_tr_file" do
    get st_tr_file_url(@st_tr_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_st_tr_file_url(@st_tr_file)
    assert_response :success
  end

  test "should update st_tr_file" do
    patch st_tr_file_url(@st_tr_file), params: { st_tr_file: { st_ma_un_field: @st_tr_file.st_ma_un_field, st_tr_extra_photo1: @st_tr_file.st_tr_extra_photo1, st_tr_extra_photo2: @st_tr_file.st_tr_extra_photo2, st_tr_photo1: @st_tr_file.st_tr_photo1, st_tr_photo2: @st_tr_file.st_tr_photo2, st_tr_un_name: @st_tr_file.st_tr_un_name, st_tr_un_name: @st_tr_file.st_tr_un_name, st_tr_un_sem: @st_tr_file.st_tr_un_sem, st_tr_un_source: @st_tr_file.st_tr_un_source, st_tr_un_target: @st_tr_file.st_tr_un_target } }
    assert_redirected_to st_tr_file_url(@st_tr_file)
  end

  test "should destroy st_tr_file" do
    assert_difference('StTrFile.count', -1) do
      delete st_tr_file_url(@st_tr_file)
    end

    assert_redirected_to st_tr_files_url
  end
end
