json.array!(@contacts) do |contact|
  json.extract! contact, :id, :first_name, :last_name, :display_name, :nickame, :primary_email, :secondary_email, :screen_name, :work_phone, :home_phone, :fax_number, :mobile_number, :home_address, :home_address2, :home_city, :home_state, :home_zip_code, :home_country, :work_address, :work_address_2, :work_city, :work_state, :work_zip_code, :work_country, :job_title, :department, :organization, :web_page_1, :web_page_2, :birth_year, :birth_month, :birth_day, :custom_1, :custom_2, :custom_3, :custom_4, :notes
  json.url contact_url(contact, format: :json)
end
