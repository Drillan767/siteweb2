class AddCategorieToPortfolio < ActiveRecord::Migration[5.0]
  def change
    add_column :portfolios, :categorie, :string
  end
end
