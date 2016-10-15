class AddOtherFileuploadToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :test, :string
  end
end
