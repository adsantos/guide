class CreateGuideItems < ActiveRecord::Migration
  def change
    create_table :guide_items do |t|
      t.string :title
      t.string :author

      t.timestamps
    end
  end
end
