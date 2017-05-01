class AddUuidToAvatars < ActiveRecord::Migration[5.0]
  def change
    add_column :avatars, :uuid, :string
  end
end
