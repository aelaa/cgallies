class Battle::Work < ApplicationRecord
  belongs_to :battle
  has_many :images

  has_attached_file :cover

  validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/
end
