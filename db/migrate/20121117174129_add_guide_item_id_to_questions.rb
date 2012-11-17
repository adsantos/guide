class AddGuideItemIdToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :guide_item_id, :integer
  end
end
