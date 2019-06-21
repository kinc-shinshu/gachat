module Types
  class ChatType < Types::BaseObject
    description 'A Chat'

    field :body, String, null: false, description: 'Body of chat'
    field :name, String, null: false, description: 'Name of sender'
    field :id, ID, null: false
  end
end
