class CreateProductSubCategoryAssociation < ActiveRecord::Migration[5.1]
  def up
    

    create_table :products_sub_categories, id: false do |t|
      t.belongs_to :product, index: true
      t.belongs_to :sub_category, index: true
    end
  end

  def down
    
    drop_table :products_sub_categories
  end
end
