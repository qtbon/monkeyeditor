class ConfigEntriesController < ApplicationController
	def index
		@propertyDefs = PropertyDefinition.all
		# Get most recent entry
		entry = ConfigEntry.last
		return if entry == nil
		properties = Property.where(config_entry_id: entry.id)

		#push details into array: property name and value
		propArray = [];
		properties.each do |p|
			definition = PropertyDefinition.where(id: p.property_definition_id).first
			propArray << {:name=>definition.name, :value=>p.value}
		end

		respond_to do |format|
			format.html
			format.json{
				render :json => propArray.to_json
			}
			format.xml{
				render :xml => propArray.to_xml
			}

		end
	end
	def create
		# Create config entry
		configEntry = ConfigEntry.new
		unless configEntry.save
			return
		end

		entryId = configEntry.id

		@propertyDefs = PropertyDefinition.all
		@propertyDefs.each do |pd|
			property = Property.new
			property.config_entry_id = entryId
			property.property_definition_id = pd.id
			property.value = params[pd.name]
			property.save
		end
		redirect_to :back
	end
end
