module WikiDetails

  def self.wiki_category
    category = ""
    all_cats = ["History", "Science", "Math", "Biography", "Literature"]
    category += all_cats.sample
  end

end
