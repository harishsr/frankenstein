class CreateYears < ActiveRecord::Migration
  def change
    create_table :years do |t|
      t.references :user, index: true, foreign_key: true
      t.string :when

      t.timestamps null: false
    end
  end
end
