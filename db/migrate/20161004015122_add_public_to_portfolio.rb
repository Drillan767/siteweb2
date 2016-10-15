class AddPublicToPortfolio < ActiveRecord::Migration[5.0]
  def change
    add_column :portfolios, :public, :boolean
  end
end
