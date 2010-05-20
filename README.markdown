Crow
====

Easy endpoints for api mocking

Usage
-----

Make a new instance with `Crow.new( path_to_your_fixtures )`

You'll probably want to use Artifice (or ShamRack). Using with Artifice is easy, just do `Artifice.activate_with Crow.new(path)`

Your fixures directory should have a folder for get, post, put, and delete. Right now Crow only does gets, but will do the REST shortly (snicker).


