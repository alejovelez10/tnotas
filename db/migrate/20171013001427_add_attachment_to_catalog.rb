class AddAttachmentToCatalog < ActiveRecord::Migration[5.1]
  def change
    add_column :catalogs, :catalog_url, :string
    add_column :catalogs, :catalog_attachment, :string
  end
end
