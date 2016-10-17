class CreatePortfolios < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolios do |t|
      t.string :titre
      t.text :description
      t.boolean :public
      t.string :thumbnail

      t.timestamps
    end
  end
end
