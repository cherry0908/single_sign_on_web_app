ActiveAdmin.register User do
  menu priority: 2
  permit_params :email, :name, :password, :password_confirmation

  filter :email
  filter :name

  config.batch_actions = true

  index do
    selectable_column
    column(:id)
    column(:email)
    column(:name)
    column(:last_sign_in_at)
    actions
  end

  show do
    attributes_table do
      row :email
      row :name
      row :last_sign_in_at
    end
  end

  form do |f|
    f.inputs "User Details" do
      f.input :email
      f.input :name
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end


end
