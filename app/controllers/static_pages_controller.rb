class StaticPagesController < ApplicationController
  def home
  end

  def tutors
  end

  def lessons
  end

  def about
  end

  def paid
    # redirect_to "/cart/clear"
    flash[:notice] = 'Transaction Complete'
    @order = Order.last
    @order.update_attribute(:status , "Paid by User: #{current_user.email}")
    #"Paid by User:#{current_user.id} #{current_user.name} #{current_user.surname}")
    session[:cart] = nil
    
    @orders = Order.all
    @orderlessons = Orderlesson.all
    @lessons = Lesson.all
    
  end

  
  
end
