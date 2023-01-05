ActiveAdmin.register Project do
  permit_params :title, :description, :image

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs do
      f.input :title
      f.input :description
      f.input :image, as: :file
      f.actions
    end
  end

  show do
    attributes_table do
      row :title
      row :description
      row :image do |ad|
        image_tag url_for(ad.image)
      end
    end
  end
end
