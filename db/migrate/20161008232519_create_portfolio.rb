class CreatePortfolio < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolio do |t|
      t.string :titre
      t.datetime :date
      t.string :categorie
      t.string :thumbnail
      t.text :description
      t.boolean :public
      t.string :slug, 

      t.timestamps
    end
  end
end
