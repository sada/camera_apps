class User < ApplicationRecord
  has_many :avatars, dependent: :destroy

  def update_associated_images
    return false unless self.uuid
    if Avatar.where(uuid: self.uuid).exists?
      Avatar.where(uuid: self.uuid).update_all(user_id: self.id)
    else
      return true
    end
  end
end
