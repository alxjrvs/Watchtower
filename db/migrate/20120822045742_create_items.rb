class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.date :date_assigned
      t.string :type
      t.references :user
      t.timestamps
    end
  end
end
