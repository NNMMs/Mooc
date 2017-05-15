ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :name, :gender, :dob, :image

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "New User" do
      f.input :name
      f.input :email
      f.input :dob, start_year: 1900,:label=>"Date of Birth"
      f.input :gender, collection: ["Male", "Female"]
      f.input :password
      f.input :password_confirmation
      f.input :image
    end
    f.actions
  end

end
