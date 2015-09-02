class VisitorsController < ApplicationController
  def index
    if not params[:number].nil?
      @phone = Phone.find_or_create_by(:number => params[:number])
      @phone.count = @phone.count + 1
      @phone.save!

      if user_signed_in? and current_user.admin?
        @phones = Phone.all
      end
    end
  end
end
