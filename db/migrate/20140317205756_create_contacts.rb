class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :display_name
      t.string :nickame
      t.string :primary_email
      t.string :secondary_email
      t.string :screen_name
      t.string :work_phone
      t.string :home_phone
      t.string :fax_number
      t.string :mobile_number
      t.string :home_address
      t.string :home_address2
      t.string :home_city
      t.string :home_state
      t.string :home_zip_code
      t.string :home_country
      t.string :work_address
      t.string :work_address_2
      t.string :work_city
      t.string :work_state
      t.string :work_zip_code
      t.string :work_country
      t.string :job_title
      t.string :department
      t.string :organization
      t.string :web_page_1
      t.string :web_page_2
      t.string :birth_year
      t.string :birth_month
      t.string :birth_day
      t.string :custom_1
      t.string :custom_2
      t.string :custom_3
      t.string :custom_4
      t.text :notes

      t.timestamps
    end
    add_index :contacts, :display_name
  end
end
