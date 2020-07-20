# frozen_string_literal: true

RSpec.shared_context 'with json response' do
  let(:response_body) { JSON.parse(response.body).deep_symbolize_keys }
  let(:response_list) { JSON.parse(response.body).map(&:deep_symbolize_keys) }
end
