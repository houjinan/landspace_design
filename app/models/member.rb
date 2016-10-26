class Member < ApplicationRecord
  mount_uploader :head_avatar, AvatarUploader
  mount_uploader :works_file, AvatarUploader

  validates :name_zh, :name_en, presence: {message: "名称不能为空"}
  validates :head_avatar, presence: {message: "请上传本人照片"}


  def name
    case I18n.locale.to_s.downcase
    when "en"
      self.name_en
    else
      self.name_zh
    end
  end

  def description
    case I18n.locale.to_s.downcase
    when "en"
      self.description_en
    else
      self.description_zh
    end
  end
end
