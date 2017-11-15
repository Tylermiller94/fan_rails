class CreateAnimes < ActiveRecord::Migration[5.0]
  def change
    create_table :animes do |t|
      t.column :name, :string
      t.column :subgenre_id, :integer
      t.column :content, :string
      t.timestamps
    end
  end
end
