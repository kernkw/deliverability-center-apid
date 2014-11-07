# Deliverability Center Apid

Deliverability Center Specific Apid client gem for ruby

## Installation

Add this line to your application's Gemfile:

    gem 'deliverability-center-apid'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install deliverability-center-apid

## Usage

    require 'deliverability-center-apid'
    
    dc-apid = DeliverabilityCenterApid::Client.new('get', 'Reason', '{id: 1, status : 0}')
    