class Director::CampsController < Director::PortalController

  def index
    @camps = Camp.find_by_id(params[:id])
  end

  def show
    @camp = Camp.find_by_id(params[:id])
  end

  def new
    @camp = Camp.new
    @address = Address.new
  end

  def create
    @camp = Camp.new(camp_params)

    # @director = Director.find_by(user_id: current_user.id)
    if @camp.save
      puts "CAMP SAVED"
      redirect_to director_dashboard_index_path
    else
      puts "CAMP NOT SAVED"
      flash[:error] = @camp.errors.full_messages
      redirect_to new_director_camp_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def camp_params
    params.require(:camp).permit(
      :name,
      :phone_number
    )
  end

end
