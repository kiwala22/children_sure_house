ActiveAdmin.register NewsFeed do
    permit_params :title, :content, :image
  
    form do |f|
      f.semantic_errors
      f.inputs do
        f.input :title
        f.input :content
        f.input :image, as: :file
        f.actions
      end
    end
  
    show do
      attributes_table do
        row :title
        row :content
        row :image do |ad|
          image_tag url_for(ad.image)
        end
      end
    end
  end
  