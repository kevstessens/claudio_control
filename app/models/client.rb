class Client < ActiveRecord::Base
  has_many :pendings

  def name
    codigo + " - "+nombre
  end
end
