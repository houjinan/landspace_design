class Member < ApplicationRecord
  mount_uploader :head_avatar, AvatarUploader
  mount_uploader :works_file, AvatarUploader

  validates :name_zh, :name_en, presence: {message: "名称不能为空"}
  validates :head_avatar, presence: {message: "请上传本人照片"}

end
