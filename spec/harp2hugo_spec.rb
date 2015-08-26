require 'spec_helper'
require 'harp2hugo'

describe(Harp2Hugo::Converter) do

  it "should load json data and create a new file" do
    Dir.chdir("spec")
    harp2hugo = Harp2Hugo::Converter.new "_data.json"

    harp2hugo.convert "output"

    result_file = "output/dropwizard-https-jerseyclient-with-runtime-jssecacerts.md"
    expect(File.exists?result_file).to be_truthy

    expected_file = "output.md"
    expect(FileUtils.compare_file(result_file, expected_file)).to be_truthy
  end

end