module Mutations
  class CreateChat < GraphQL::Schema::Mutation
    null false
    type Types::ChatType

    argument :body, String, required: true
    argument :name, String, required: true

    def resolve(body: nil, name: nil)
      Chat.create!(body: body, name: name)
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join('; ')}")
    end
  end
end
