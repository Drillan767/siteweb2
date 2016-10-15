class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :titre
      t.string :resume
      t.text :contenu
      t.string :image

      t.timestamps
    end
  end
end
