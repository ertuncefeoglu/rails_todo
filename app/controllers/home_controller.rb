class HomeController < ApplicationController

  def trash_em
      @trash_em = List.where(:completed => true).destroy_all  
      redirect_to root_url, notice: 'All marked items were succesfully deleted.'
  end

  def trash_em_all
      @trash_em_all = List.all.destroy_all  
      redirect_to root_url, notice: 'All items were succesfully deleted.'
  end  

end
