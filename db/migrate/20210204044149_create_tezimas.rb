class CreateTezimas < ActiveRecord::Migration[6.0]
  def change
    create_table :tezimas do |t|
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
