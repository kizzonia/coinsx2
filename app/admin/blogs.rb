ActiveAdmin.register Blog do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :title, :blogvideoimg, :videolink,  :body, :sub_title, :blogimg, :slug, :blog_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :body, :sub_title, :blogimg, :slug]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form(:html => { :multipart => true }) do |f|
    f.inputs do
      f.input :blogimg, :as => :file
      f.input :title
      f.input :blogvideoimg
      f.input :videolink
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
