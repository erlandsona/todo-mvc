class TodosController < ActionController::Base
  include Trailblazer::Operation::Controller
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  respond_to :json


  def index
    collection Todos::Index
    render json: @collection, status: :ok
  end

  def show
    present Todos::Update
    render json: @model, status: :ok
  end

  def create
    run Todos::Create do
      return render json: @model, status: :ok
    end
    render json: @operation.contract.errors, status: 404
  end

  def update
    run Todos::Update
    render json: @model, status: :ok
  end

  def destroy
    run Todos::Destroy
    head 200
  end

end
