require 'net/http'
require 'uri'
require 'colorize'
require 'semantic'
require 'shell-spinner'

library_files = Dir[File.join(File.dirname(__FILE__), '/ncupdater/*.rb')].sort
library_files.each do |file|
  require file
end

class NCUpdater

  def initialize(semver_path = 'test', remote_url = '', commands = '')
    @semver_path = semver_path
    @remote_url = remote_url
    @commands = commands
  end

  def update
    if new_version?
      NCUpdate::new::update(@commands)
    else
      puts 'You are already on latest version..'.colorize(:yellow)
    end
  end

  def new_version?
    NCCheckVersion::new::check_for_updates(@semver_path, @remote_url)
  end

end