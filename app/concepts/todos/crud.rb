module Todos
  class Index < Trailblazer::Operation
    include Collection
    def model!(params)
      Todo.all
    end
  end
  class Create < Trailblazer::Operation
    include Model
    model Todo, :create

    contract do
      property :todo
      validates :todo, presence: true
    end

    def process(params)
      validate(params) do
        contract.save
      end
    end
  end
  class Update < Create
    action :update
  end
  class Destroy < Update
    def process(params)
      model.destroy
    end
  end
end
