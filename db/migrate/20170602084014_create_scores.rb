class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.integer :goals, default: 0
      t.references :game, foreign_key: true
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
