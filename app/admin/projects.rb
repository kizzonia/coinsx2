ActiveAdmin.register Project do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :sub_title, :date, :category, :link, :recent, :slug, :body, :complete, :pimg, :owner, :price
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :sub_title, :link, :recent, :slug, :body, :complete, :pimg, :owner, :price]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form(:html => { :multipart => true }) do |f|
    f.inputs do
      f.input :pimg, :as => :file
      f.input :name
      f.input :link, placeholder: "Link To project"
      f.input :date
      f.input :complete
      f.input :owner
      f.input :recent
      f.input :category, :as => :select, :collection => ["Personal", "Company/portfolio", "Education", "finance& Investments", "graphics and art", "entertainment"]
      f.input :sub_title, placeholder: "Project description"
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
