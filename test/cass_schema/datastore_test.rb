require_relative '../test_helper'

module CassSchema
  class DataStoreTest < MiniTest::Should::TestCase
    context '#build' do
      should 'accept the schema base path as an option' do
        schema_base_path = File.expand_path(__FILE__, '../')
        ds = CassSchema::DataStore.build("hello", schema_base_path: schema_base_path)
        assert_equal File.join(schema_base_path, 'hello', 'schema.cql'), ds.schema_path
      end
    end
  end
end
