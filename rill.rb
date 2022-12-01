# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rill < Formula
  desc "The Rill CLI"
  homepage "https://github.com/rilldata/rill-developer"
  version "0.15.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "http://pkg.rilldata.com/rill/v0.15.0/rill_0.15.0_Darwin_arm64.tar.gz"
      sha256 "f1496666dd971f35be0bad821a53482eeb0218c87b7cc9edd7b3abafd2c6469a"

      def install
        bin.install "rill"
      end
    end
    if Hardware::CPU.intel?
      url "http://pkg.rilldata.com/rill/v0.15.0/rill_0.15.0_Darwin_amd64.tar.gz"
      sha256 "d6334077f93476f071e81ff512039b39ae80dd0a52d1a97a5bff971ce2124e90"

      def install
        bin.install "rill"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "http://pkg.rilldata.com/rill/v0.15.0/rill_0.15.0_Linux_amd64.tar.gz"
      sha256 "b7d8115d5dcd32b0f36ef807f89153fd9f044b5b5b4007abcb164fdc9f4c64e9"

      def install
        bin.install "rill"
      end
    end
  end

  test do
    system "#{bin}/rill --version"
  end
end
