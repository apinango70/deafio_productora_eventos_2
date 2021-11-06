class Grupo < ApplicationRecord
  has_many :conciertos
  def to_s
    nombre
  end
end
