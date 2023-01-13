ActiveAdmin.register Partner do
  permit_params :name, :content, :website, :image

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :name
      f.input :content
      f.input :website
      f.input :image, as: :file
      f.actions
    end
  end

  show do
    attributes_table do
      row :name
      row :content
      row :website do |partner|
        link_to('Visit', partner.website, target: "_black")
      end
      row :image do |partner|
        image_tag url_for(partner.image)
      end
    end
  end
end
