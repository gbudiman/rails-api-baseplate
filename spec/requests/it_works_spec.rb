# frozen_string_literal: true

RSpec.describe 'it works request spec', type: :request do
  include_context 'with json response'

  it 'works' do
    expect(1 + 2).to eq(3)
  end
end
