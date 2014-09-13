Rails.application.config.assets.precompile << Proc.new do |path|
  Rails.application.config.assets.paths << Rails.root.join("app", "assets", "fonts")
  #config.assets.precompile += %w(.svg .eot .woff .ttf)
  if path =~ /\.(css|js|scss|png|jpg|gif|json)\z/
    full_path = Rails.application.assets.resolve(path).to_path
    app_assets = Rails.root.join('app', 'assets').to_path
    public_assets = Rails.root.join('public', 'assets').to_path
    vendor_assets = Rails.root.join('vendor', 'assets').to_path

    if full_path.starts_with? app_assets
      true
    else
      if full_path.starts_with?  public_assets
        true
      else
        if full_path.starts_with? vendor_assets
          true
        else
          false
        end
      end
    end
  end
end