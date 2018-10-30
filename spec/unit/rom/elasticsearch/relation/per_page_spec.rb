require 'rom/elasticsearch/relation'

RSpec.describe ROM::Elasticsearch::Relation, '#per_page' do
  subject(:relation) { relations[:users].order(:id) }

  include_context 'users'

  before do
    relation.command(:create).(id: 1, name: 'Jane')
    relation.command(:create).(id: 2, name: 'John')

    relation.refresh
  end

  it 'returns relation with per_page and page set' do
    result = relation.page(2).per_page(1).to_a

    expect(result).to match_array([{ id: 2, name: 'John' }])
  end
end
