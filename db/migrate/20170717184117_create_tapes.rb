class CreateTapes < ActiveRecord::Migration[5.1]
  def change
    create_table :tapes do |t|
      t.string :name

      t.timestamps
    end
  end
end
