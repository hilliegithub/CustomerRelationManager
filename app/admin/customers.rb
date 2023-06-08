ActiveAdmin.register Customer do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :fullname, :phone_number, :email, :notes, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:fullname, :phone_number, :email, :notes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  #permit_params :name, :email, :phone

  index do
    selectable_column
    id_column
    column :fullname
    column :phone_number
    column :email
    column :notes
    column :image do |customer|
      if customer.image.attached?
        image_tag customer.image.variant(resize: "100x100")
      else
        "No Image"
      end
    end
    actions
  end

  form do |f|
    f.inputs do
      f.input :fullname
      f.input :phone_number
      f.input :email
      f.input :notes
      f.input :image, as: :file
    end
    f.actions
  end

end
