FactoryGirl.define do
	factory :user do
		name				"Matt Du Pont"
		email   		"mdp@spam.biz"
		password		"foobar"
		password_confirmation "foobar"
	end
end