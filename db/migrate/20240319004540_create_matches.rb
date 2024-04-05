class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.references :teamA, foreing_key: {to_table: :teams}, null: false
      t.references :teamB, foreing_key: {to_table: :teams}, null: false
      t.boolean :state
      t.string :result


      t.timestamps
    end
  end
end
