# Circuits Controller
class CircuitsController < ProtectedController
  before_action :authenticate, only: [:index, :create]

  # GET user's circuit
  def index
    @circuits = current_user.circuits
    render json: @circuits
  end

  # POST new circuit
  def create
    @circuit = current_user.circuits.build(circuit_params)

    if @circuit.save
      render json: @circuit, status: :created, location: @circuit
    else
      render json: @circuit.errors, status: :unprocessable_entity
    end
  end

  # private
  private

  def circuit_params
    params.require(:current_user).permit(:exercise_name,
                                         :exercise_targeted_muscles,
                                         :exercise_weight,
                                         :exercise_reps
                                        )
  end
end
