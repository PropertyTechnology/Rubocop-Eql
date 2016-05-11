# Rubocop-Eql
A matcher for Rubocop that detects == and suggests .eql?

Install all dependencies as normal
```
$ bundle install
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
$ gem install rubocop-eql
```
Or
```
$ bundle exec rake install
```


## Usage
To use the cops along with the default cops, add the following to `.rubocop.yml`

```
require: rubocop-eql
```


## Project Structure

* `config/default.yml` - Default parameters for the cops.
* `lib/rubocop-eql.rb` - Entry point for the extension, with all requires.
* `lib/rubocop/eql/inject.rb` - Monkeypatch for RuboCop to accept a plugin
structure.
* `lib/rubocop/cop/*` - Cops definitions.

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
