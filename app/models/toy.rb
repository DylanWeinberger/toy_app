class Toy < ActiveRecord::Base
  
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  has_many :donors_toys
  has_many :donators, through: :donors_toys
  has_many :seeks
  has_many :organizations, through: :seeks

  # belongs_to :organization
end
