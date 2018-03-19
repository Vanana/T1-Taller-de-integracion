class Post < ApplicationRecord
  has_many :comments, :dependent => :destroy

  validates_length_of :titulo, :within => 2..100
  validates_length_of :bajada, :within => 2..200
  validates_presence_of :body


end
