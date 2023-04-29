class Week < ApplicationRecord
  has_many :sales_and_finance
  has_many :operations_and_compliance
  has_many :people
  has_many :target

  def generate_new_year(start_date)
    current_date = Date.parse(start_date)
    (1..52).each do |week_no|
      week = Week.create!(
        week_no: week_no,
        date_commencing: current_date
      )
      SalesAndFinance.create!(week_id: week.id)
      OperationsAndCompliance.create!(week_id: week.id)
      Person.create!(week_id: week.id)
      Target.create!(week_id: week.id)
      current_date = current_date + 7.days
    end 
  end
end
