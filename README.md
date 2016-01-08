# ncupdater
## WIP!

## Example

### Basic usage

```ruby
# Define commands to run the update
commands = {
    :'Gem update' => 'gem update my-command',
    :'Some other command' => 'ls -la'
}

# Init the NCUpdater class
ncupdater = NCUpdater::new('.semver', 'http://LINK-TO-A-TEXT-FILE-WITH-NEW-VERSION', commands)

if ncupdater::new_version?
    ncupdater::update
end
```