![Seedr](/img/logo.png)

Seedr is a non-expansive, simple alternative to Forgery, Faker, FFaker, and the like. It aims to provide a single namespace with a limited set of options, focusing instead on the most basic of dummy data. 

## Installation

Install the gem from the command line:

    $ sudo gem install Seedr

## Usage

### Rails

Add the following to your Gemfile:

    gem 'Seedr'

Within your seeds.rb file, any of Seedr's data elements can be called and a random result will be returned. Example:

    10.times do
      p = Profile.new
      p.first_name = Seedr.first_name
      p.last_name = Seedr.last_name
      p.address_line_1 = Seedr.address_line_1
      p.email = Seedr.email
      p.save!
    end

### Ruby

Seedr can naturally be used outside of a Rails context. Example:

    require 'Seedr'
    name = Seedr.full_name
    puts name
    
## API

### Generic Randoms

    Seedr.random_string(length=1)
    Seedr.random_integer(length=1)
    Seedr.random_word
    
### Dates/Times

    Seedr.date
    Seedr.datetime
    
### Profile

    Seedr.first_name
    Seedr.last_name
    Seedr.middle_initial
    Seedr.username
    Seedr.full_name
    Seedr.email
    Seedr.phone_number(separator='')
    Seedr.company_name
    Seedr.address_line_1
    Seedr.address_line_2
    Seedr.city
    Seedr.state(abbreviation=FALSE)
    Seedr.province(abbreviation=FALSE)
    Seedr.country(abbreviation=FALSE)
    
### Editorial

    Seedr.category
    Seedr.article_type
    Seedr.series
    Seedr.title
    Seedr.body
    
##Finally...

© 2013 <a href="http://www.asheavenue.com">Ashe Avenue</a>. Created by <a href="http://twitter.com/timboisvert">Tim Boisvert</a> and Rob Farrell.
<br />
Seedr is released under the <a href="http://opensource.org/licenses/MIT">MIT license</a>.
