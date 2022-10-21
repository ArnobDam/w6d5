class Cat < ApplicationRecord
  CAT_COLORS = ['black', 'white', 'orange', 'brown','tan']

  validates :birth_date, presence: true
  validates :color, presence: true, inclusion: { in: CAT_COLORS }
  validates :name, presence: true
  validates :sex, presence: true, inclusion: { in: ['M', 'F']}

  validate :birth_date_cannot_be_future

  def birth_date_cannot_be_future
    if birth_date.present? && birth_date > Date.today
      errors.add(:birth_date, "can't be in the future")
    end
  end
  
  
end
