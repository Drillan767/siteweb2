class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :titre
      t.string :categorie
      t.text :contenu
      t.string :image
      t.string :slug
      t.boolean :public
      t.string :slug

      t.timestamps
    end
  end
end
