require "../../api/schema"

class GraphQL::Index < ApiAction
  include Api::Auth::SkipRequireAuthToken
  post "/graph_ql" do
    puts params.from_json.inspect
    variables = params.from_json["variables"]?.as(Hash(String, JSON::Any)?)
    query = params.from_json["query"].to_s
    operation_name = params.from_json["operationName"]?.as(String?)
    schema = GraphQL::Schema.new(Api::Query.new)
    response = schema.execute(query, variables, operation_name)
    puts schema.document.to_s
    json response
  end
end
