class PagesController < ApplicationController
  def about
  end

  def contact
    @members = ['Veni', 'Chloe', 'James', 'Emily']

    search = params[:member]

    if search.present?
      @members = @members.select { |member| member.downcase.start_with?(search.downcase) }
    end
  end

  def home
    @time = Date.today
  end
end
