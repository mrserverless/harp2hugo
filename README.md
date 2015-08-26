# Harp2hugo
[![Gem Version](https://badge.fury.io/rb/harp2hugo.svg)](http://badge.fury.io/rb/harp2hugo)

Gem for converting posts from [Harp](https://github.com/sintaxi/harp) [metadata json](http://harpjs.com/docs/development/metadata)
 into [Hugo](https://github.com/spf13/hugo) [Front Matter](https://gohugo.io/content/front-matter/) format. 

## Usage

    $ gem install harp2hugo
    $ harp2hugo [input_file] [output_dir]

Where input_file defaults to `_data.json` and output_dir defaults to `output`.
NOTE: the output dir will be created relative to your input file directory.

    $ harp2hugo public/posts/_data.json output

Logic is to loop through each post specified in `_data.json` file:

 1. Reads in the metadata in JSON format
 2. Convert metadata to YAML format and prepend to the post
 3. Write the new post with prepended metadata into output directory.

## Disclaimer

Currently still work in progress. Written with plenty of help from [@nagliyvred](https://github.com/nagliyvred)

## Contributing

1. Fork it ( https://github.com/yunspace/harp2hugo/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
