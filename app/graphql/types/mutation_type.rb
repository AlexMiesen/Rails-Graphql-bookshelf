module Types
  class MutationType < Types::BaseObject

    field :create_author, Types::AuthorType, null: true, description:  "a specification" do
      argument :first_name, String, required: false
      argument :last_name, String, required: false
      argument :yob, Int, required: false
      argument :is_alive, Boolean, required: false 
    end

    def create_author(first_name:, last_name:, yob:, is_alive:)
      Author.create(first_name: first_name, last_name: last_name, yob: yob, is_alive: is_alive)
    end 
  end
end
