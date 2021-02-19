class Export
  def initialize(data)
    @parsed_data = data
  end

  def search_by_css(search_node)
    @parsed_data.css(search_node).text
  end

  def search_by_tags(search_node)
    @parsed_data.xpath(search_node).text
  end
end
