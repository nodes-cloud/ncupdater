class Update
  def update(commands)
    commands.each do |key, value|
      ShellSpinner "#{key}" do
        `#{value}`
      end
    end
  end
end