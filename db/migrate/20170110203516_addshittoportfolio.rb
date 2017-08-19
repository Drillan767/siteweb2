class Addshittoportfolio < ActiveRecord::Migration[5.0]
  def change
    add_column :portfolios, :lien, :string
  end
end
