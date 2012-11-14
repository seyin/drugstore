ActiveAdmin.register User do
  index do
    column :email
    column :sign_in_count
    column :admin
  end

  form do |f|
    f.inputs do
      f.input :email
      f.input :admin
      f.buttons
    end
  end
end
