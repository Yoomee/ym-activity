class AddTextToActivityItems < ActiveRecord::Migration

  def change
    add_column :activity_items, :text, :string
  end

end
