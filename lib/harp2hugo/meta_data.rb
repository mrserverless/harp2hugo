require "yaml"

class MetaData

  def initialize json_data
    @json_data = json_data
  end

  def to_yaml
    @json_data["linktitle"] = @json_data["title"]
    "#{@json_data.to_yaml}---\n"
  end

end