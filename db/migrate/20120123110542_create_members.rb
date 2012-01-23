class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :firstname
      t.string :lastname
      t.integer :member_id
      t.date :dob

      t.timestamps
    end
    add_index :addresses, :addressable_id
  end
end
