require 'test_helper'

class Mutations::CreateChatTest < ActiveSupport::TestCase
  def perform(args  = {})
    Mutations::CreateChat.new(object: nil, context: {}).resolve(args)
  end


  test 'ensure creates a new chat' do
    chat = perform(body: 'Test chatting', name: 'TestBot')

    assert chat.persisted?
    assert_equal chat.body, 'Test chatting'
    assert_equal chat.name, 'TestBot'
  end
end
