class CreateFrames < ActiveRecord::Migration[6.0]
  def change
    create_table :frames do |t|
      t.belongs_to :player, foreign_key: true
      t.integer :frame_number
      t.integer :first_score
      t.integer :second_score
      t.integer :bonus_score

      t.timestamps
    end
  end
end
