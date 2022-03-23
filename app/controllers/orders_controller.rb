class OrdersController < ApplicationController
  before_action :set_order, only: %i[ show edit update destroy ]

  # GET /orders or /orders.json
  def index
    @orders = Order.includes([:show_time, :customer, show_time: [:movie]]).all

    @total_revenue = 0
    @orders.each do |order|
      @total_revenue += (order.number_of_ticket * order.show_time.ticket_price)
    end
    @total_revenue
  end

  # GET /orders/1 or /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
    @customer = Customer.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders or /orders.json
  def create
    @show_time = ShowTime.find(params[:show_time_id])
    @customer = Customer.find_or_create_by!(
      email: params[:customer][:email],
      first_name: params[:customer][:first_name],
      last_name: params[:customer][:last_name],
      credit_card_number: params[:customer][:credit_card_number],
      expiration_date: params[:customer][:expiration_date],
    )
    @order = @show_time.orders.new(order_params.merge(customer: @customer))
    

    respond_to do |format|
      if @order.save
        @show_time.total_seats -= order_params[:number_of_ticket].to_i
        @show_time.sold_seats += order_params[:number_of_ticket].to_i
        @show_time.save
        OrderMailer.ticket_purchase_email(@order).deliver
        format.html { redirect_to show_time_order_path(@show_time, @order), notice: "Order was successfully created." }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1 or /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to order_url(@order), notice: "Order was successfully updated." }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1 or /orders/1.json
  def destroy
    @order.destroy

    respond_to do |format|
      format.html { redirect_to orders_url, notice: "Order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def dashboard
    @orders = Order.includes([:show_time, :customer, show_time: [:movie]]).all
    show_time_id_array = @orders.pluck(:show_time_id)
    frequency = show_time_id_array.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
    @popular_show_time_id = show_time_id_array.max_by(50) { |v| frequency[v] }.uniq

    @popular_movies = []
    @popular_show_time_id.each do |id|
      @popular_movies.push(ShowTime.find(id).movie_name)
    end


  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:number_of_ticket, :show_time_id, :customer_id)
    end

    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :credit_card_number, :expiration_date, :email)
    end
end
