RSpec.describe Todos::Index do
  # describe "#model!" do
  # end
end
RSpec.describe Todos::Create do
  it { expect{ described_class.(todo: "Stuff").model }.to change(Todo, :count).by(1) }
end
RSpec.describe Todos::Update do
end
RSpec.describe Todos::Destroy do
end
