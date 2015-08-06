require "json"

class Harp2hugo

  def initialize input_file
    @data_json = JSON.parse(File.read input_file)
  end

  def convert output_dir

    @data_json.delete("feed")

    @data_json.each {|key, value|
      post_content = File.read("#{key}.md")
      File.open("#{output_dir}/#{key}.md", 'w') { |output_file|
        output_file.write MetaData.new(value).to_yaml
        output_file.write post_content
      }
    }

  end

end