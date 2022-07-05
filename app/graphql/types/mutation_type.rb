module Types
  class MutationType < Types::BaseObject

    #Method 1 (lots of mutations potentially in one file, not practical when dealing with lots of mutations)
    # field :create_author, Types::AuthorType, null: true, description:  "a specification" do
    #   argument :first_name, String, required: false
    #   argument :last_name, String, required: false
    #   argument :yob, Int, required: false
    #   argument :is_alive, Boolean, required: false 
    # end

    # def create_author(first_name:, last_name:, yob:, is_alive:)
    #   Author.create(first_name: first_name, last_name: last_name, yob: yob, is_alive: is_alive)
    # end

    #Method 2 (create a seperate file create_author.rb)
    field :create_author, Types::AuthorType, mutation: Mutations::CreateAuthor

  end
end
