class Order < ApplicationRecord
  validates :cheese, presence: { message: "Choose a cheese please" }
end
