class CreatePortfolios < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolios do |t|
      t.string :titre
      t.text :description
      t.boolean :public
      t.datetime :date
      t.string :thumbnail
      t.string :categorie
      t.string :slug

      t.timestamps
    end
  end
end
