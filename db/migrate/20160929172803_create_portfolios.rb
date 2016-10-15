class CreatePortfolios < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolios do |t|
      t.string :titre
      t.text :description
      t.string :categorie
      t.string :lien

      t.timestamps
    end
  end
end
