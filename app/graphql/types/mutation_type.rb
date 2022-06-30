module Types
  class MutationType < Types::BaseObject

    field :create_author, Types::AuthorType, null:true do
      argument :Id, ID,

    end

  end
end
