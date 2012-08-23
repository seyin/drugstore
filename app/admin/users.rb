ActiveAdmin.register User do
  form do |f|
    f.inputs do
      f.input :email
      f.input :admin
      f.buttons
    end
  end
   # The authorization is done using the AdminAbility class
  controller.authorize_resource
end
