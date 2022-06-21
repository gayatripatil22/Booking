class AddNotifiableIdToNotification < ActiveRecord::Migration[7.0]
  def change
    add_column :notifications, :notifiable_id, :bigint
  end
end
