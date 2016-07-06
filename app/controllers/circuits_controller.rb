# Circuits Controller
class CircuitsController < ProtectedController
  before_action :authenticate, only: [:index, :create, :show, :destroy]

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

  # GET by id
  def show
    render json: Circuit.find(params[:id])
  end

  # DELETE exercise from circuits
  def destroy
    @circuit = Circuit.find(params[:id])
    @circuit.delete
  end

  # private
  private

  def set_circuit
    @circuit = current_user.circuits.find(params[:id])
  end

  def circuit_params
    params.require(:circuit).permit(:exercise_name,
                                    :exercise_targeted_muscles,
                                    :exercise_weight,
                                    :exercise_reps
                                   )
  end

  private :set_circuit, :circuit_params
end
