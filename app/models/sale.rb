class Sale < ActiveRecord::Base

	before_create :population_guid
	belongs_to :book

	private

	def populate_guid
		self.guid = SecureRandom.uuid()
	end
	
end
