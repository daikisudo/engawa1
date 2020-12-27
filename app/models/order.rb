class Order < ApplicationRecord
  belongs_to :illustrator, optional: true
  attachment :image

validates :name, presence: true
validates :amount, numericality: {only_integer: true, greater_than: 49999}
validates :caption, presence: true
end

