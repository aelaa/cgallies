class Battle < ApplicationRecord
  TYPES = [
    :speedsculpt,
    :longbattle,
    :claybattle,
    :fanchallenge
  ]

  has_attached_file :cover

  has_many :works

  validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/
end
