require "../../../spec_helper"

describe GraphQL::Index do
  surveys_query = "
    query {
      surveys {
        description
      }
    }
  "

  it "get surveys", tags: "wip" do
    client = ApiClient.new

    # client
    #   .headers("Content-Type", "application/json")
    # .headers("Accept", "application/vnd.api.v1+json")

    response = client.exec(GraphQL::Index, query: surveys_query)
    puts response.body
    # response.should send_json(
    #   200
    # )
  end
end
