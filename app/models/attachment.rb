class Attachment < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  belongs_to :resource, :polymorphic => true

  default_scope {order("avatar asc")}
end
