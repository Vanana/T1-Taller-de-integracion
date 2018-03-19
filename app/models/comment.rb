class Comment < ApplicationRecord
  belongs_to :post

  validates_length_of :usuario, :within => 2..30
  validates_presence_of :usuario
  validates_presence_of :comentario
end
