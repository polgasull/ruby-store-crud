class Project < ApplicationRecord

  has_many :pictures, dependent: :destroy
end
