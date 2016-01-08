# ncupdater
NCUpdater provides you with an easy way to update your ruby scripts. You specify a link to a small text file with latest version number, and the path of a .semver file in your project.
It will then check for updates every time your project starts. You can run update with a list of commands you would like to run.

## Install

```bash
gem install ncupdater
```

## Example

### Basic usage

#### Example 1

This example will run the update when the script starts

```ruby
require 'ncupdater'

# Define commands to run the update
commands = {
    :'Gem update' => 'gem update my-command',
    :'Some other command' => 'ls -la'
}

# Init the NCUpdater class
# .semver is path to the location of a file with the local version in the semver format (http://semver.org/)
# The url is to a link with a text file with the latest version in semver format.
ncupdater = NCUpdater::new('.semver', 'http://LINK-TO-A-TEXT-FILE-WITH-NEW-VERSION', commands)

if ncupdater::new_version?
    ncupdater::update
end
```

#### Example 2

This example will run the update if you provide "update" as first argument of your script. It also shows a message when the script starts that there are a newer version

```ruby
require 'ncupdater'

# Define commands to run the update
commands = {
    :'Gem update' => 'gem update my-command',
    :'Some other command' => 'ls -la'
}

# Init the NCUpdater class
# .semver is path to the location of a file with the local version in the semver format (http://semver.org/)
# The url is to a link with a text file with the latest version in semver format.
ncupdater = NCUpdater::new('.semver', 'http://LINK-TO-A-TEXT-FILE-WITH-NEW-VERSION', commands)

if ncupdater::new_version?
    puts 'A new version is available. Please run the command as: ruby <my-script>.rb update to get the latest awesomeness'
end

if ARGV[0] == 'update'
    ncupdater::update
end
```

## Todo

- Write some tests
- Write doc blocks
- Better error handling
