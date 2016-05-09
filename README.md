# Rubocop-Eql
A matcher for Rubocop that detects == and suggests .eql?

Install all dependencies as normal
```
$ bundle install
```

Execute tests as you develop with
```
$ guard
```

Before submitting a PR run all tests with
```
$ rspec spec/
```

And make sure you comply with the community style guide by running
```
$ rubocop
```

You can run a console for an interactive prompt that will allow you
to experiment.
```
$ bin/console
```


## Installation
You can install the gem manually by running
```
$ gem install /path/to/built/gem
```
Or
```
$ bundle exec rake install
```


## Usage
[FILL IN HERE]


## Project Structure
[BELOW IS AN EXAMPLE, REPLACE WITH REAL DATA]
### General
* `blm/blm.rb` – Handles reading BLM data from a file, string, or hash, and
parsing it for Entries.

### Entries
* `blm/entry.rb` – Main class allowing retrieval of BLM attributes from an
entry, as well as helper methods for commonly used combinations of BLM
attributes.
* `blm/specification.yaml` – BLM value rules and restrictions expressed in
YAML format.
* `blm/coder.rb` – Class responsible for encoding and decoding BLM attributes
* `blm/codings/` – Contains all mappings (in YAML format) from BLM encoded
values to their human readable forms.


## Contributing
We use Github Flow, you can read more about it on these pages

https://guides.github.com/introduction/flow/

http://scottchacon.com/2011/08/31/github-flow.html


The process is as follows:

Create your feature branch
```
$ git checkout -b my-new-feature
```

Commit your changes
```
$ git commit -am 'Add some feature'
```

Push to the branch
```
$ git push origin my-new-feature
```

Create a new Pull Request
