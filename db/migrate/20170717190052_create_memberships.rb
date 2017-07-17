class CreateMemberships < ActiveRecord::Migration[5.1]
  def change
    create_table :memberships do |t|
      t.belongs_to :song, index: true
      t.belongs_to :tape, index: true
      t.timestamps
    end
  end
end
