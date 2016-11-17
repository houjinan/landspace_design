class NewsTrend < ApplicationRecord
  mount_uploader :cover_image, AvatarUploader
  validates :title_zh, :title_en, presence: {message: "标题不能为空"}



  def title
    case I18n.locale.to_s.downcase
    when "en"
      self.title_en.to_s
    else
      self.title_zh.to_s
    end
  end

  def phrase
    case I18n.locale.to_s.downcase
    when "en"
      self.phrase_en.to_s
    else
      self.phrase_zh.to_s
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


  def scaned
    update(scan_count: self.scan_count.to_i+1)
  end
end
