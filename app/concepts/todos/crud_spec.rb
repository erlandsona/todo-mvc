# describe Todos::Index do
#   # describe "#model!" do
#   # end
# end
require_dependency 'test_helper'
require_relative 'crud'
module Todos
  describe Create do
    it { expect{ described_class.(todo: "Stuff").model }.to change(Todo, :count).by(1) }
  end
end
# describe Todos::Update do
# end
# describe Todos::Destroy do
# end
