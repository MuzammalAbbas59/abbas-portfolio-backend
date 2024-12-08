class Experience < ApplicationRecord
  has_many :projects, dependent: :destroy
end
