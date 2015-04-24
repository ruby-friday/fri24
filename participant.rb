require "data_mapper"
require "faker"
DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/data.db")
class Participant
	include DataMapper::Resource
	property :id, Serial
	property :first_name, String
	property :last_name, String
	property :phone_number, String
	property :alternate_phone_number, String
	property :email, String
	property :home_address, String
	property :emergency_contact, String
	property :gender, String
end

DataMapper.finalize

Participant.auto_upgrade!
