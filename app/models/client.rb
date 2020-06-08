class Client < ApplicationRecord
  belongs_to :user

  has_attached_file :client_image, styles: { client_index: "300x300>", client_show: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :client_image, content_type: /\Aimage\/.*\z/
end
