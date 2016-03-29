class Student < ActiveRecord::Base
  # validates :first_name, :last_name, :email, :cell_phone, :work_phone, :home_phone, presence: true
  # validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  # validates :cell_phone, :work_phone, :home_phone, length: { :maximum => 12 },
    # format: { with: /\d{3}-\d{3}-\d{4}/, message: 'format should be xxx-xxx-xxxx' }

  validates :first_name, :last_name, presence: true
  validates :cell_phone, :work_phone, :home_phone, presence: true, length: { :maximum => 12},
    format: { with: /\d{3}-\d{3}-\d{4}/, message: 'format should be xxx-xxx-xxxx' }
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
    message: 'invalid. Example: me@me.com' }
end
