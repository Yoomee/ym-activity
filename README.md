# YmActivity

This project rocks and uses MIT-LICENSE.

## Usage

Given a User class:

```
class User < ActiveRecord::Base
  include YmUsers::User
end

```

Run the generator with: ```rails generate ym_activity:install```

```
rake db:migrate
```

Include ```YmActivity::Recordable``` on the ActiveRecord class that can be recorded as an activity (class name not important):

```
class Resource < ActiveRecord::Base
  include YmActivity::Recordable
end
```
Include


Model Usage:
```
u = User.create
r = Resource.create({name: "test"})
u.record_activity!(r)
u.record_activity!("Test action")
u.activity_items
r.activity_items
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
Test view helpers
