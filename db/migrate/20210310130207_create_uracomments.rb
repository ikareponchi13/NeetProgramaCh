class CreateUracomments < ActiveRecord::Migration[6.0]
  def change
    create_table :uracomments do |t|
      t.string :name
      t.text :body
      t.references :urapost, null: false, foreign_key: true

      t.timestamps
    end
  end
end
