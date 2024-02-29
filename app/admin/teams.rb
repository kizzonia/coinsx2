ActiveAdmin.register Team do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :title, :teamimg, :slug, :body, :position, :whatsapp, :ln, :ig
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :teamimg, :slug, :body, :position, :whatsapp, :ln, :ig]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    f.inputs do
      f.input :title
      f.input :teamimg, as: :file
      f.input :position, placeholder: "Phone Number", label: "Phone"

      f.input :whatsapp, placeholder: "Links"
      f.input :ig, placeholder: "Links"
      f.input :ln, placeholder: "Links"
      
      f.input :body,  as: :ckeditor
    end
    f.actions
  end

  controller do
         def find_resource
           scoped_collection.friendly.find(params[:id])
         end
       end
end
