class Post < ApplicationRecord
  has_many :comments, :dependent => :destroy

  validates_length_of :titulo, :within => 2..100
  validates_length_of :bajada, :within => 2..200
  validates_presence_of :body



  def publish_now
    !self.fecha.nil?
  end

  def publish_now=(value)
    if value == "1" && self.fecha.nil?
      self.fecha = Date.current
    end
  end

end
