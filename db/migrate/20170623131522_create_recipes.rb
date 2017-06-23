class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :creator
      t.string :prep_time
      t.string :cook_time
      t.string :difficulty
      t.string :ingredients
      t.string :directions
    end
  end
end
