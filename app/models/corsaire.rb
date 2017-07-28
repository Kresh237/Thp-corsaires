class Corsaire < ApplicationRecord
before_save {self.first_name = first_name.capitalize}
  validates :first_name,  presence: true, length: { maximum: 20 }
  validates :age, presence: true, :numericality => {:greater_than_or_equal_to => 15, :less_than_or_equal_to => 120}
  validates :slack_handle, format: { with: /\A[a-zA-Z0-9]+\Z/ }
  validates :github_handle, format: { with: /\A[a-zA-Z0-9]+\Z/ }
end
