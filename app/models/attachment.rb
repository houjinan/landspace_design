class Attachment < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  belongs_to :resource, :polymorphic => true
end
