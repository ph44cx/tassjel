require 'test_helper'

class StFileBasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @st_file_ba = st_file_bas(:one)
  end

  test "should get index" do
    get st_file_bas_url
    assert_response :success
  end

  test "should get new" do
    get new_st_file_ba_url
    assert_response :success
  end

  test "should create st_file_ba" do
    assert_difference('StFileBa.count') do
      post st_file_bas_url, params: { st_file_ba: { st_ba_cer_extra: @st_file_ba.st_ba_cer_extra, st_ba_cer_extra_cert: @st_file_ba.st_ba_cer_extra_cert, st_ba_cer_extra_gcse: @st_file_ba.st_ba_cer_extra_gcse, st_ba_cer_extra_mearyi: @st_file_ba.st_ba_cer_extra_mearyi, st_ba_cer_extra_photo1: @st_file_ba.st_ba_cer_extra_photo1, st_ba_cer_extra_photo2: @st_file_ba.st_ba_cer_extra_photo2, st_ba_cer_extra_photo3: @st_file_ba.st_ba_cer_extra_photo3, st_ba_cer_extra_photo4: @st_file_ba.st_ba_cer_extra_photo4, st_ba_cer_extra_qudorat: @st_file_ba.st_ba_cer_extra_qudorat, st_ba_cer_extra_sat: @st_file_ba.st_ba_cer_extra_sat, st_ba_cer_extra_tahseli: @st_file_ba.st_ba_cer_extra_tahseli, st_ba_cer_extra_yos: @st_file_ba.st_ba_cer_extra_yos, st_ba_cer_lang: @st_file_ba.st_ba_cer_lang, st_ba_cer_lang_ielts: @st_file_ba.st_ba_cer_lang_ielts, st_ba_cer_lang_other: @st_file_ba.st_ba_cer_lang_other, st_ba_cer_lang_toefl: @st_file_ba.st_ba_cer_lang_toefl, st_ba_cer_marks: @st_file_ba.st_ba_cer_marks, st_ba_cer_photo: @st_file_ba.st_ba_cer_photo, st_ba_cer_photo_transcript: @st_file_ba.st_ba_cer_photo_transcript, st_ba_cer_source: @st_file_ba.st_ba_cer_source, st_ba_cer_year: @st_file_ba.st_ba_cer_year } }
    end

    assert_redirected_to st_file_ba_url(StFileBa.last)
  end

  test "should show st_file_ba" do
    get st_file_ba_url(@st_file_ba)
    assert_response :success
  end

  test "should get edit" do
    get edit_st_file_ba_url(@st_file_ba)
    assert_response :success
  end

  test "should update st_file_ba" do
    patch st_file_ba_url(@st_file_ba), params: { st_file_ba: { st_ba_cer_extra: @st_file_ba.st_ba_cer_extra, st_ba_cer_extra_cert: @st_file_ba.st_ba_cer_extra_cert, st_ba_cer_extra_gcse: @st_file_ba.st_ba_cer_extra_gcse, st_ba_cer_extra_mearyi: @st_file_ba.st_ba_cer_extra_mearyi, st_ba_cer_extra_photo1: @st_file_ba.st_ba_cer_extra_photo1, st_ba_cer_extra_photo2: @st_file_ba.st_ba_cer_extra_photo2, st_ba_cer_extra_photo3: @st_file_ba.st_ba_cer_extra_photo3, st_ba_cer_extra_photo4: @st_file_ba.st_ba_cer_extra_photo4, st_ba_cer_extra_qudorat: @st_file_ba.st_ba_cer_extra_qudorat, st_ba_cer_extra_sat: @st_file_ba.st_ba_cer_extra_sat, st_ba_cer_extra_tahseli: @st_file_ba.st_ba_cer_extra_tahseli, st_ba_cer_extra_yos: @st_file_ba.st_ba_cer_extra_yos, st_ba_cer_lang: @st_file_ba.st_ba_cer_lang, st_ba_cer_lang_ielts: @st_file_ba.st_ba_cer_lang_ielts, st_ba_cer_lang_other: @st_file_ba.st_ba_cer_lang_other, st_ba_cer_lang_toefl: @st_file_ba.st_ba_cer_lang_toefl, st_ba_cer_marks: @st_file_ba.st_ba_cer_marks, st_ba_cer_photo: @st_file_ba.st_ba_cer_photo, st_ba_cer_photo_transcript: @st_file_ba.st_ba_cer_photo_transcript, st_ba_cer_source: @st_file_ba.st_ba_cer_source, st_ba_cer_year: @st_file_ba.st_ba_cer_year } }
    assert_redirected_to st_file_ba_url(@st_file_ba)
  end

  test "should destroy st_file_ba" do
    assert_difference('StFileBa.count', -1) do
      delete st_file_ba_url(@st_file_ba)
    end

    assert_redirected_to st_file_bas_url
  end
end
