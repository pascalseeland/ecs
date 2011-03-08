# Copyright (C) 2007, 2008, 2009, 2010 Heiko Bernloehr (FreeIT.de).
# 
# This file is part of ECS.
# 
# ECS is free software: you can redistribute it and/or modify it
# under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of
# the License, or (at your option) any later version.
# 
# ECS is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Affero General Public License for more details.
# 
# You should have received a copy of the GNU Affero General Public
# License along with ECS. If not, see <http://www.gnu.org/licenses/>.


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
Organization.create :name => "not available", :description => "For anonymous participants.", :abrev => "n/a"
Organization.create :name => "system", :description => "Internal ECS community.", :abrev => "sys"
Participant.create :name => "ecs", :description => "ECS system participant", :dns => 'n/a', 
  :community_selfrouting => false, :organization_id => Organization.find_by_name("system").id 
Community.create :name => "public", :description => "For anonymous participants."
RessourceMonitor.create :name => "queue"
%w(created destroyed updated notlinked).each do |evt|
  EvType.create :name => evt
end
Ressource.create :namespace => 'sys', :ressource => 'auth', :postroute => true, :events => false

