class CreateChatRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :chat_rooms do |t|
      t.boolean    :is_running, default: true
      t.references :trade

      t.timestamps
    end
  end
end
