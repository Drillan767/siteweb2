class AddBullshitToPortfolio < ActiveRecord::Migration[5.0]
  def change
    add_column :portfolios, :thumbnail, :string
  end
end
