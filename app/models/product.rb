class Product < ActiveRecord::Base
  has_many :pendings

  def name
    nombre + " ("+ codigo+")"
  end

end
