require 'spec_helper'
require 'harp2hugo'

describe(Harp2Hugo::MetaData) do

  expected_yaml = <<-eos
---
title: Dropwizard HTTPS JerseyClient with runtime JSSE CA Certificates
date: '2015-05-16'
tags:
- dropwizard
- ssl
- jersey
author: yunspace
linktitle: Dropwizard HTTPS JerseyClient with runtime JSSE CA Certificates
---
  eos

  it "should convert json to yaml" do
    json_data = {"title" => "Dropwizard HTTPS JerseyClient with runtime JSSE CA Certificates",
                 "date" => "2015-05-16",
                 "tags" => ["dropwizard", "ssl", "jersey"],
                 "author" => "yunspace"}
    metadata = Harp2Hugo::MetaData.new(json_data)

    expect(metadata.to_yaml).to eq(expected_yaml)
  end
end