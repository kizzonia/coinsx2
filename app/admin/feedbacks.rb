ActiveAdmin.register Feedback do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #

  permit_params :title, :body, :icon, :slug
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :body, :icon, :slug]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    f.inputs do
      f.input :title, placeholder: "Title "
      f.input :icon, placeholder: "User Name"
        f.input :body

    f.actions
  end
end

end
