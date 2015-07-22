class MonkeysController < ActionController::Base
  layout "application"
 def index
 	@monkeys = Monkey.all
 end

 def show
 	@monkey = Monkey.find(params[:id])
 end

  def new
    @monkey = Monkey.new
  end

  def create
    @monkey = Monkey.new(monkey_params)
      if @monkey.save
       
         redirect_to monkeys_path 
      else
        render :new
    end
  end

  def edit
    @monkey = Monkey.find(params[:id])
  end

  def update
    @monkey = Monkey.find(params[:id])
    if @monkey.update_attributes(monkey_params)
     
      redirect_to monkey_path 
    else
    	render :edit
    end
  end

  def destroy
    @monkey = Monkey.find(params[:id])
    @monkey.destroy
    redirect_to monkeys_path 
  end


  private
  def monkey_params
    params.require(:monkey).permit(:title, :age, :story, :gender, :image)
  end

end

