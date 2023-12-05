# GhostParser

A ruby plugin used to help evaluate the exported [Ghost](https://ghost.org/) users

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add ghost_user_parser

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install ghost_user_parser

## Usage

To parse the export:
```ruby
parser = GhostUserParser.new("path/to/export.cvs").parse

[
    {
        "id": "id",
        "email": "email",
        "name": "name",
        "note": "note",
        "subscribed_to_emails": "subscribed_to_emails",
        "complimentary_plan": "complimentary_plan",
        "deleted_at": "deleted_at",
        "created_at": "created_at",
        "labels": "labels",
        "tiers": "tiers"
    }, ......
]
```