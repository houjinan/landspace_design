class NewsTrend < ApplicationRecord
  mount_uploader :cover_image, AvatarUploader
  validates :title_zh, :title_en, presence: {message: "标题不能为空"}



  def title
    case I18n.locale.to_s.downcase
    when "en"
      self.title_en
    else
      self.title_zh
    end
  end


  def content
    case I18n.locale.to_s.downcase
    when "en"
      self.content_en
    else
      self.content_zh
    end
  end
end