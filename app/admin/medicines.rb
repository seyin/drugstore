ActiveAdmin.register Medicine do
  index do
    column 'Commercial Name', :commercial_name
    column 'Generic Name', :generic_name
    column :laboratory
    column :presentation
    column :concentration
    default_actions
  end
end
