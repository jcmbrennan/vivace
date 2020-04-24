class CartController < ApplicationController
  before_action :authenticate_user!
  layout "orders"
  
def createOrder
 
 # Step 1: Get the current user
 @user = User.find(current_user.id)

 # Step 2: Create a new order and associate it with the current user
 @order = @user.orders.build(:order_date => DateTime.now, :status => 'Pending')
 @order.save

 # Step 3: For each item in the cart, create a new item on the order!!
 @cart = session[:cart] || {}
 @cart.each do | id, quantity |
 lesson = Lesson.find_by_id(id)
 @orderlesson = @order.orderlessons.build(:lesson_id => lesson.id, :title => lesson.title, :quantity => quantity, :price=> lesson.price)
 @orderlesson.save
 end
 
 
 @orders = Order.last
 
 
 @orderlessons = Orderlesson.where(order_id: Order.last)


  end


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

  #if cart[id] then

  #  cart[id] = cart[id] +1

 # else

  cart[id] = 1

 # end 


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

 end 

 def remove

  id = params[:id]
  cart = session[:cart]
  cart.delete id

  redirect_to :action => :index #might need to change this to root

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
 
end