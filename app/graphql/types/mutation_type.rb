module Types
  class MutationType < Types::BaseObject
    field :create_chat, mutation: Mutations::CreateChat
  end
end
