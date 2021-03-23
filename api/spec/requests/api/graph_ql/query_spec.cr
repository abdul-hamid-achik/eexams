require "../../../spec_helper"

describe Api::GraphQL::Index do
  it "returns the signed in user" do
    user = UserFactory.create

    response = ApiClient.auth(user).exec(Api::Me::Show)

    response.should send_json(200, email: user.email)
  end

  it "returns an error if credentials are invalid" do
    user = UserFactory.create
    invalid_params = valid_params(user).merge(password: "incorrect")

    response = ApiClient.exec(Api::SignIns::Create, user: invalid_params)

    response.should send_json(
      400,
      param: "password",
      details: "password is wrong"
    )
  end
end
