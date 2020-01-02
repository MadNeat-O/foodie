class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :description
      t.integer :time
      t.string :type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
