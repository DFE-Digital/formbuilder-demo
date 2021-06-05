class OrdersController < ApplicationController
  before_action :set_order, only: %i[show edit update destroy]
  before_action :set_options, only: %i[new edit create update]
  Cheese = Struct.new(:id, :name)
  Side = Struct.new(:id, :name)

  # GET /orders
  def index
    @orders = Order.all
  end

  # GET /orders/1
  def show
    # nothing yet
  end

  # GET /orders/new
  def new
    @order = Order.new
    @order.valid?
  end

  # GET /orders/1/edit
  def edit
    # nothing yet
  end

  # POST /orders
  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to @order, notice: "Order was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /orders/1
  def update
    if @order.update(order_params)
      redirect_to @order, notice: "Order was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /orders/1
  def destroy
    @order.destroy!

    redirect_to orders_url, notice: "Order was successfully destroyed."
  end

private

  # Use callbacks to share common setup or constraints between actions.
  def set_order
    @order = Order.find(params[:id])
  end

  def set_options
    @sizes = { "Small" => 9, "Medium" => 11, "Large" => 15 }
    @toppings = %w[chicken sweetcorn ham pineapple mushrooms peperoni]
    @bases = ["Thin crust", "Thick crust", "Deep dish", "Neapolitan"]
    @sauces = { "Traditional" => ["Tomato", "Marinara", "Tomato and herb"], "Modern" => ["Barbecue", "Pine kernel pesto", "Garlic"] }
    @cheeses = [Cheese.new("mzz", "Mozzarella"), Cheese.new("mzg", "Mozzaralla and goat's cheese"), Cheese.new("mzc", "Mozzaralla and Cheddar"), Cheese.new("no", "No cheese")]
    @sides = [Side.new("db", "Dough balls"), Side.new("ags", "Arugula salad"), Side.new("cw", "Chicken wings"), Side.new("mc", "Macaroni cheese")]
  end

  # Only allow a list of trusted parameters through.
  def order_params
    params.require(:order).permit(:size, :toppings, :base, :crust, :sauce, :cheese, :sides, :phone, :email, :allergies, :name, :address, :delivery_date)
  end
end
