class AddSlugToPortfolio < ActiveRecord::Migration[5.0]
  def change
    add_column :portfolios, :slug, :string, unique: true
  end
end
