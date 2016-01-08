class CheckVersion

  def check_for_updates(semver_path, remote_url)
    @semver_path = semver_path
    @remote_url = remote_url

    update = Semantic::Version.new "#{current_version}"
    newer_version = Semantic::Version.new "#{remote_version}"

    if update < newer_version
      return true
    end
    return false

  end

  def current_version
    File.open(@semver_path) {|f| f.readline}
  end

  def remote_version
    uri = URI.parse( @remote_url )

    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.path)

    response = http.request(request)
    response.body
  end

end