require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post :create, contact: { birth_day: @contact.birth_day, birth_month: @contact.birth_month, birth_year: @contact.birth_year, custom_1: @contact.custom_1, custom_2: @contact.custom_2, custom_3: @contact.custom_3, custom_4: @contact.custom_4, department: @contact.department, display_name: @contact.display_name, fax_number: @contact.fax_number, first_name: @contact.first_name, home_address2: @contact.home_address2, home_address: @contact.home_address, home_city: @contact.home_city, home_country: @contact.home_country, home_phone: @contact.home_phone, home_state: @contact.home_state, home_zip_code: @contact.home_zip_code, job_title: @contact.job_title, last_name: @contact.last_name, mobile_number: @contact.mobile_number, nickame: @contact.nickame, notes: @contact.notes, organization: @contact.organization, primary_email: @contact.primary_email, screen_name: @contact.screen_name, secondary_email: @contact.secondary_email, web_page_1: @contact.web_page_1, web_page_2: @contact.web_page_2, work_address: @contact.work_address, work_address_2: @contact.work_address_2, work_city: @contact.work_city, work_country: @contact.work_country, work_phone: @contact.work_phone, work_state: @contact.work_state, work_zip_code: @contact.work_zip_code }
    end

    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should show contact" do
    get :show, id: @contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact
    assert_response :success
  end

  test "should update contact" do
    patch :update, id: @contact, contact: { birth_day: @contact.birth_day, birth_month: @contact.birth_month, birth_year: @contact.birth_year, custom_1: @contact.custom_1, custom_2: @contact.custom_2, custom_3: @contact.custom_3, custom_4: @contact.custom_4, department: @contact.department, display_name: @contact.display_name, fax_number: @contact.fax_number, first_name: @contact.first_name, home_address2: @contact.home_address2, home_address: @contact.home_address, home_city: @contact.home_city, home_country: @contact.home_country, home_phone: @contact.home_phone, home_state: @contact.home_state, home_zip_code: @contact.home_zip_code, job_title: @contact.job_title, last_name: @contact.last_name, mobile_number: @contact.mobile_number, nickame: @contact.nickame, notes: @contact.notes, organization: @contact.organization, primary_email: @contact.primary_email, screen_name: @contact.screen_name, secondary_email: @contact.secondary_email, web_page_1: @contact.web_page_1, web_page_2: @contact.web_page_2, work_address: @contact.work_address, work_address_2: @contact.work_address_2, work_city: @contact.work_city, work_country: @contact.work_country, work_phone: @contact.work_phone, work_state: @contact.work_state, work_zip_code: @contact.work_zip_code }
    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete :destroy, id: @contact
    end

    assert_redirected_to contacts_path
  end
end
