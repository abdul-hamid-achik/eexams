require "../../api/schema"

class GraphQL::Index < ApiAction
  post "/graph_ql" do
    query = params.from_json["query"].as(String)
    variables = params.from_json["variables"]?.as(Hash(String, JSON::Any)?)
    operation_name = params.from_json["operationName"]?.as(String?)
    schema = GraphQL::Schema.new(Api::Query.new)
    puts schema.execute(query, variables, operation_name)
    
  end
end
