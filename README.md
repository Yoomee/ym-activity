# YmActivity

This project rocks and uses MIT-LICENSE.

## Usage

```
u = User.create
u.activity_items
r = Resource.create({name: "test"})
r.activity_items
u.record_activity!(r)
u.record_activity!("Test action")
```

## Tests

To setup the database use:

```
rake -f test/dummy/Rakefile db:drop db:create db:migrate test:prepare
```

To run the tests:

```
rspec
```

## TODO

Seed data for dummy app
Tests
Test view helpers
