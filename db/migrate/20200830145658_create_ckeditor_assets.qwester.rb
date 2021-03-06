# This migration comes from qwester (originally 20121114084347)
class CreateCkeditorAssets < ActiveRecord::Migration[6.0]
  def self.up
    create_table :qwester_ckeditor_assets do |t|
      t.string  :data_file_name, :null => false
      t.string  :data_content_type
      t.integer :data_file_size

      t.integer :assetable_id
      t.string  :assetable_type, :limit => 30
      t.string  :type, :limit => 30

      # Uncomment	it to save images dimensions, if your need it
      t.integer :width
      t.integer :height

      t.timestamps
    end

    add_index "qwester_ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "qwester_idx_ckeditor_assetable_type"
    add_index "qwester_ckeditor_assets", ["assetable_type", "assetable_id"], :name => "qwester_idx_ckeditor_assetable"
  end

  def self.down
    drop_table :qwester_ckeditor_assets
  end
end
