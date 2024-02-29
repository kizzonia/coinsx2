ActiveAdmin.register Abouttrade do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :title, :sub_title, :body, :link, :slug, :icon, :abouttradeimg
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :sub_title, :body, :link, :slug, :icon, :abouttradeimg]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

    form do |f|
      f.inputs do
        f.input :title
        f.input :link, label: "Number", placeholder: "number count"
        f.input :sub_title, placeholder: "description"
        f.input :body,  as: :quill_editor
      end
      f.actions
    end

    controller do
           def find_resource
             scoped_collection.friendly.find(params[:id])
           end
         end
end
