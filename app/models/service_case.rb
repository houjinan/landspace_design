class ServiceCase < ApplicationRecord
  has_many :attachments, :as => :resource, :dependent => :destroy
  accepts_nested_attributes_for :attachments, allow_destroy: true

  validates :title_zh, :title_en, presence: {message: "标题不能为空"}
end
