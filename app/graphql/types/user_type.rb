class Types::UserType < Types::BaseObject
	field :id, ID, null: true
	field :email, String, null: true
	field :is_superadmin, Boolean, null: true
end