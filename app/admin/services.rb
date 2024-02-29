ActiveAdmin.register Service do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

    permit_params :title, :slug, :icon, :sub_title, :body, :service_id, :serviceimg

    form(:html => { :multipart => true }) do |f|
       f.inputs do
        f.input :title
        f.input :icon, :as => :file
        f.input :serviceimg, :as => :file
        f.input :sub_title, placeholder: "description"
        f.input :body, as: :quill_editor
      end
      f.actions
    end

    controller do
           def find_resource
             scoped_collection.friendly.find(params[:id])
           end
         end
end
