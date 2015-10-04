require 'spec_helper'
require 'harp2hugo'

describe(Harp2Hugo::MetaData) do

  expected_yaml = <<-eos
---
title: Spit up on light gray carpet instead of adjacent linoleum chew iPad power cord
date: '2015-05-16'
tags:
- cat
- lipsum
- meow
author: yunspace
---
  eos

  it "should convert json to yaml without linewrap" do
    json_data = {"title" => "Spit up on light gray carpet instead of adjacent linoleum chew iPad power cord",
                 "date" => "2015-05-16",
                 "tags" => ["cat", "lipsum", "meow"],
                 "author" => "yunspace"}
    metadata = Harp2Hugo::MetaData.new(json_data)

    expect(metadata.to_yaml).to eq(expected_yaml)
  end
end