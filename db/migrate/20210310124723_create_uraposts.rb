class CreateUraposts < ActiveRecord::Migration[6.0]
  def change
    create_table :uraposts do |t|
      t.string :title

      t.timestamps
    end
  end
end
