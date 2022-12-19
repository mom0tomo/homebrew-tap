class Tignore < Formula
  desc 'generate the .gitignore file with cli'
  version '0.0.1'
  homepage 'https://github.com/mom0tomo/tignore'

  on_macos do
    if Hardware::CPU.intel?
      url 'https://github.com/mom0tomo/tignore/releases/download/v0.0.1/tignore_v0.0.1_darwin_amd64.zip'
      sha256 '061c31342ea25b84239d009cbcb502fe7162fcb9c54f60ab54b928359a6b3816'
    end
  end

  head do
    url 'https://github.com/mom0tomo/tignore.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'tignore'
  end
end
