class Mutations::CreateAuthor < GraphQL::Schema::Mutation
	
	null true

	argument :author, Types::AuthorInputType, required: true

	def resolve(author:)
		Author.create author.to_h #to_h in order to change the way the author comes from the front end, and create an instance
	end 

	# These are not needed here because they now belong in the graphql_name "AuthorInputType" in author_type
	# argument :first_name, String, required: false
  # argument :last_name, String, required: false
  # argument :yob, Int, required: false
  # argument :is_alive, Boolean, required: false

	# def resolve(first_name:, last_name:, yob:, is_alive:)
	# 	Author.create(first_name: first_name, last_name: last_name, yob: yob, is_alive: is_alive)
	# end


end 