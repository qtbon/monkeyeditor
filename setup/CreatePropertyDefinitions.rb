propertyDefs = [
	{:name=>"Min Fall Time", :category=>"GamePlay", :default=>4},
	{:name=>"Max Fall Time", :category=>"GamePlay", :default=>8},
	{:name=>"Balance Off Multiplier", :category=>"GamePlay", :default=>5},
	{:name=>"Min Speed", :category=>"Buckets", :default=>0.5},
	{:name=>"Max Speed", :category=>"Buckets", :default=>2},
	{:name=>"Min Size", :category=>"Buckets", :default=>0.5},
	{:name=>"Max Size", :category=>"Buckets", :default=>2},
	{:name=>"Fall Speed", :category=>"Birds", :default=>5},
	{:name=>"Point Value - Hoatzin", :category=>"Score", :default=>250},
	{:name=>"Point Value - Humming Bird", :category=>"Score", :default=>200},
	{:name=>"Point Value - Macaw", :category=>"Score", :default=>100},
	{:name=>"Point Value - Motmot", :category=>"Score", :default=>500},
	{:name=>"Point Value - Toucan", :category=>"Score", :default=>400},
	{:name=>"Arm Movement Multiplier", :category=>"GamePlay", :default=>3}
]


propertyDefs.each { |p| PropertyDefinition.create(:name=>p[:name], :category=>p[:category], :default=>p[:default]) }
