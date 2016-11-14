class ServiceCase < ApplicationRecord
  has_many :attachments, :as => :resource, :dependent => :destroy
  accepts_nested_attributes_for :attachments, allow_destroy: true

  ServiceCategory = {商业空间: "commercial_space", 居住空间: "living_space", 办公空间: "office_space"}
  validates :title_zh, :title_en, presence: {message: "标题不能为空"}



  def service_category_name
    ServiceCategory.select{|k, v| v == self.service_type}.keys.join("")
  end


  def title
    case I18n.locale.to_s.downcase
    when "en"
      self.title_en
    else
      self.title_zh
    end
  end
end
