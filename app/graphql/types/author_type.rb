class Types::AuthorType < Types::BaseObject
	
	description "One author"

	field :id, ID, null: false
	field :first_name, String, null: true
	field :last_name, String, null: true
	field :yob, Int, null: false
	field :is_alive, Boolean, null: true
	field :created_at, GraphQL::Types::ISO8601DateTime, null: false

	field :full_name, String, null: true

	def full_name
		"#{object.first_name} #{object.last_name}"
	end

	field :coordinates, Types::CoordinatesType, null: false 

	field :publication_years, [Int], null: false

	field :errors, [Types::ErrorType], null: true

	def errors
		object.errors.map { |e| { field_name: e, errors: object.errors[e]} }
	end

end 

class Types::AuthorInputType < GraphQL::Schema::InputObject
	graphql_name "AuthorInputType"
	description "All the attributes needed to create/update an author"
	
	argument :id, ID, required: false # this one is needed for updating
	argument :first_name, String, required: false
  argument :last_name, String, required: false
  argument :yob, Int, required: false
  argument :is_alive, Boolean, required: false
end 