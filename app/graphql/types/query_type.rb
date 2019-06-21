module Types
  class QueryType < Types::BaseObject
    field :all_chats, [ChatType], null: false

    def all_chats
      Chat.all
    end
  end
end
