ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :sub_title, :price, :link, :slug, :pimg
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :sub_title, :price, :link, :slug]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form(:html => { :multipart => true }) do |f|
    f.inputs do
      f.input :pimg, :as => :file
      f.input :name
      f.input :link, placeholder: "paste product url link"
      f.input :sub_title, placeholder: "description"
    end
    f.actions
  end

  controller do
         def find_resource
           scoped_collection.friendly.find(params[:id])
         end
       end
end
