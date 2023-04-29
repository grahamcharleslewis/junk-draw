class TrackerController < ApplicationController
  def index
    @week = Week.first

    @sales_and_finance = @week.sales_and_finance.first
    @operations_and_compliance = @week.operations_and_compliance.first
    @person = @week.people.first
    @target = @week.target.first
  end
end
