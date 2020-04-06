class CartController < ApplicationController
  before_action :authenticate_user!

  def add

    # get the Id of the product

    id = params[:id]

   # if the cart is already been created, use existing cart else create a blank cart

  if session[:cart] then

    cart = session[:cart]

  else

    session[:cart] = {}

    cart = session[:cart]

  end

  #If the product is already added it increments by 1 else product set to 1

  if cart[id] then

    cart[id] = cart[id] + 1

  else

    cart[id]= 1

  end 


    redirect_to :action => :index

 
  end

 
 def clearCart

    #sets session variable to nil and bring back to index

    session[:cart] = nil

    redirect_to :action => :index

 end

 
 def index

    # passes a cart to display

    if session[:cart] then

      @cart = session[:cart]

    else

      @cart = {}

 end 

 def remove

  id = params[:id]
  cart = session [:cart]
  cart.delete id

  redirect_to :lessons #might need to change this to root

  end

  def decrease

    id = params[:id]
    cart = session[:cart]
    if cart[id] == 1 then
      cart.delete id
    else
      cart[id] = cart[id] -1
    end

    redirect_to :action => :index

  end
  
  def createOrder
    @user = User.find(current_user.id)

    @order = @user.orders.build(:order_date => DateTime.now, :status => 'Pending')

    @order.save

    @cart = session[:cart] || {} #get the content of the cart

    @cart.each do |id, quantity|

      lesson = lesson.find_by_id(id)

    #note that the following may need to change (as well as the orderlesson table) to align with the field names on the lessons table  
    @orderlesson = @order.orderlessons.build(:lesson_id => lesson.id, :title => lesson.title, :description => lesson.description, :quantity => quantity, :price => lesson.price)
    
    @orderlesson.save


    @orders = Order.last

    @orderlessons = orderlesson.where(order_id: Order.last)

    session[:cart] = nil

  end  

  

  end

end

end

