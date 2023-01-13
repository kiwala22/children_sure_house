ActiveAdmin.register Section do
  permit_params :name, :title, :content, :link, :link_text, images: []
  
  form html: { multipart: true } do |f|
    f.semantic_errors
    f.inputs do
      f.input :name , :as => :select, collection: (['ABOUT', 'JOIN_US', 'EMARGENCY_CARE', 'DONATE'])
      f.input :title
      f.input :content
      f.input :link
      f.input :link_text
      f.input :images, as: :file, input_html: { multiple: true }
      f.actions
    end
  end

  show do
    attributes_table do
      row :name
      row :title
      row :content
      row :link
      row :link_text
      row :images do |section|
        div do
          section.images.each do |img|
            div do
              image_tag url_for(img)
            end
          end
        end
      end
    end
  end
end
