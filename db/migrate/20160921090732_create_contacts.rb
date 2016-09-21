class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.integer :mobile
      t.references :user_id, index: true, foreign_key: true
      t.string :gender

      t.timestamps null: false
    end
  end
end
