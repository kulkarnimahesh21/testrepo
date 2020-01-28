FactoryBot.define do
  factory :middleware_datasource

  factory :hawkular_middleware_datasource,
          :aliases => ['app/models/manageiq/providers/hawkular/middleware_manager/middleware_datasource'],
          :class   => 'ManageIQ::Providers::Hawkular::MiddlewareManager::MiddlewareDatasource',
          :parent  => :middleware_datasource

  factory :hawkular_middleware_datasource_initialized,
          :parent => :hawkular_middleware_datasource do
    name { 'ExampleDS' }
    nativeid { 'Local~/subsystem=datasources/data-source=ExampleDS' }
    middleware_server { FactoryBot.create(:middleware_server) }
  end
end
