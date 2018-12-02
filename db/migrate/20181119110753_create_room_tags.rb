class CreateRoomTags < ActiveRecord::Migration[5.2]
  def change
    create_table :room_tags do |t|
      t.belongs_to :room, index: true
      t.belongs_to :tag,  index: true

      t.timestamps
    end
  end
end
