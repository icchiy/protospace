class RemoveRateFromPrototypes < ActiveRecord::Migration
  def change
    remove_column :prototypes, :url, :text
    remove_column :prototypes, :image_url, :text
  end
end
