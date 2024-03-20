class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.references :teamA
      t.references :teamB
      t.boolean :state
      t.string :result


      t.timestamps
    end
  end
end
