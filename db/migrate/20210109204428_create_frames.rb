class CreateFrames < ActiveRecord::Migration[6.0]
  def change
    create_table :frames do |t|
      t.belongs_to :player, foreign_key: true
      t.integer :frame_number
      t.integer :first
      t.integer :second
      t.integer :bonus

      t.timestamps
    end
  end
end
