ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    column :send_req do |object|
      link_to 'ajax', '#', :onclick => "ajaxCall();"
    end
    actions
    column :actions do |object|
             # raw( %(#{link_to "View", [:admin, object]}
       #{(link_to "Edit", [:edit, :admin, object.user]) }) )
      raw( %(#{link_to "Delete", [:admin, object],remote: true, method: :delete}
    ) )
    end
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  controller do
    def ajax_call_new
      p 22222222222222222
      render :nothing => true
    end
  end
end
