class Tag < ActiveRecord::Base
    has_many :taggings
    has_many :articles, through: :taggings

    def self.counts
        self.select("name, count(taggings.tag_id) as count").joins(:taggings).group("tags.name, taggings.tag_id")
    end
end
