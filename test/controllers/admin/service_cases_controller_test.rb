require 'test_helper'

class Admin::ServiceCasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_service_case = admin_service_cases(:one)
  end

  test "should get index" do
    get admin_service_cases_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_service_case_url
    assert_response :success
  end

  test "should create admin_service_case" do
    assert_difference('Admin::ServiceCase.count') do
      post admin_service_cases_url, params: { admin_service_case: { description_en: @admin_service_case.description_en, description_zh: @admin_service_case.description_zh, service_type: @admin_service_case.service_type, title_en: @admin_service_case.title_en, title_zh: @admin_service_case.title_zh } }
    end

    assert_redirected_to admin_service_case_url(Admin::ServiceCase.last)
  end

  test "should show admin_service_case" do
    get admin_service_case_url(@admin_service_case)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_service_case_url(@admin_service_case)
    assert_response :success
  end

  test "should update admin_service_case" do
    patch admin_service_case_url(@admin_service_case), params: { admin_service_case: { description_en: @admin_service_case.description_en, description_zh: @admin_service_case.description_zh, service_type: @admin_service_case.service_type, title_en: @admin_service_case.title_en, title_zh: @admin_service_case.title_zh } }
    assert_redirected_to admin_service_case_url(@admin_service_case)
  end

  test "should destroy admin_service_case" do
    assert_difference('Admin::ServiceCase.count', -1) do
      delete admin_service_case_url(@admin_service_case)
    end

    assert_redirected_to admin_service_cases_url
  end
end
