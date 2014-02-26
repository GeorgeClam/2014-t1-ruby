class Customer < ActiveRecord::Base
  validates :first_name, presence: true, length: { minimum: 1, message: "can't be blank" }, allow_nil: true
  validates :last_name,  presence: true, length: { minimum: 1, message: "can't be blank" }, allow_nil: true
  validates :ship_speed, presence: true, length: { minimum: 1, message: "can't be blank" }, allow_nil: true
  validates :ship_address1, presence: true, length: { minimum: 1, message: "can't be blank" }, allow_nil: true
  validates :ship_city, presence: true, length: { minimum: 1, message: "can't be blank" }, allow_nil: true
  validates :ship_state, presence: true, length: { is: 2 }, allow_nil: true
  validates :ship_zip_code, presence: true, format: { with: /\A\d{5}\z/, message: "should be 5 digits" }, allow_nil: true
  validates :bill_address1, presence: true, length: { minimum: 1, message: "can't be blank" }, allow_nil: true
  validates :bill_city, presence: true, length: { minimum: 1, message: "can't be blank" }, allow_nil: true
  validates :bill_state, presence: true, length: { is: 2 }, allow_nil: true
  validates :bill_zip_code, presence: true, format: { with: /\A\d{5}\z/, message: "should be 5 digits" }, allow_nil: true
end
