class Continent < ApplicationRecord
    has_many :countries
    has_many :cities, through: :countries

    def countries_attributes=(countries_attributes)
        countries_attributes.each do |k, country_attributes|
            self.countries.build(country_attributes)
        end
    end
end
