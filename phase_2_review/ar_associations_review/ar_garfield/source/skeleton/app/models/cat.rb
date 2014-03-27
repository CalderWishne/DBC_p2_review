class Cat < ActiveRecord::Base
  has_many :adoptions
  has_many :slaves, through: :adoptions, source: :human
  has_many :underlings, class_name: "Cat", foreign_key: "top_cat_id"
  belongs_to :top_cat, class_name: "Cat"
  belongs_to :vet
  # Remember to create a migration!
end
