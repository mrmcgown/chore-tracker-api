#
class ChoresController < ProtectedController
  include ActionController::Live

  skip_before_action :authenticate, only: :watch
  before_action :set_chore, only: [:show, :update, :destroy]

  # private

  def query_string_authenticate
    token = params[:token]
    @current_user = AUTH_BLOCK.call(token)
    head :unauthorized unless current_user
  end

  def base_query
    Chore.where('user_id = :user',
                user: current_user.id)
  end

  def save(chore, status = :ok)
    if @chore.save
      render json: @chore, status: status
    else
      render json: { errors: chore.errors }, status: :bad_request
    end
  end

  # GET /chores
  def index
    render json: base_query
  end

  # GET /chores/1
  def show
    render json: @chore
  end

  # POST /chores
  def create
    @chore = current_user.chores.build(chore_params)
    save @chore, :created
  end

  # PATCH/PUT /chores/1
  def update
    if @chore.update(chore_params)
      render json: @chore
    else
      render json: @chore.errors, status: :unprocessable_entity
    end
  end

  # DELETE /chores/1
  def destroy
    @chore.destroy

    head :no_content
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_chore
      @chore = Chore.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def chore_params
      params.require(:chore).permit(:name, :estimated_time, :is_finished, :frequency, :last_completed, :user_id)
    end
end
