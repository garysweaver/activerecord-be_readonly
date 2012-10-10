Be Readonly for ActiveRecord 3.x/4.x and Rails 3.x/4.x
=====

Makes any ActiveRecord model become read-only in Rails with:

    be_readonly

There are other gems that provide similar behavior, but from what I saw, they did either too much or too little. This one is just right, and be_readonly couldn't be much shorter to type and read without just being "readonly", but readonly would be too easily confused with related instance methods in ActiveRecord.

### What it does

Adding this gem to you bundle will add a class method called be_readonly on each model when Rails loads via a railtie.

If be_readonly is called on the class, it defines the class methods: delete and delete_all and the instance methods: before_create, before_save, before_destroy, and delete to all raise a ActiveRecord::ReadOnlyRecord error. It also defines the instance method readonly? to return true, which disables a lot that tries to create and update in ActiveRecord.

### Setup

In your ActiveRecord/Rails 3.0+ project, add this to your Gemfile:

    gem 'activerecord-be_readonly'

For the development version:

    gem 'activerecord-be_readonly', :git => 'git://github.com/garysweaver/activerecord-be_readonly.git'

Then run:

    bundle install

### Usage

In your model just include this, preferably somewhere noticeable like at the top:

    be_readonly

### Using without Rails

Or if you are off-rails, but use ActiveRecord, just do this in the model class:

    include BeReadonly::Now

### Contributors

Thanks to Gabriel Naiman for his patch!

### License

Copyright (c) 2012 Gary S. Weaver, released under the [MIT license][lic].

[lic]: http://github.com/garysweaver/activerecord-be_readonly/blob/master/LICENSE
