module Types
  class QueryType < Types::BaseObject
    # /users
    field :users, [Types::UserType], null: false,
      description: "List all users"

    def users
      User.all
    end

    field :user, [Types::UserType], null: false do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end

  end
end
