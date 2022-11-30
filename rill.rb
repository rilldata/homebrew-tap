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
      sha256 "a8d9039a477c4ee4b64004040395e1ec296fb28d15d3f7e81fe3fb612f1eeee4"

      def install
        bin.install "rill"
      end
    end
    if Hardware::CPU.intel?
      url "http://pkg.rilldata.com/rill/v0.15.0/rill_0.15.0_Darwin_amd64.tar.gz"
      sha256 "059816a579629201345d1948d0c7f72b5e532a1f023707791f3eb53d0608d53b"

      def install
        bin.install "rill"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "http://pkg.rilldata.com/rill/v0.15.0/rill_0.15.0_Linux_amd64.tar.gz"
      sha256 "43a2c3b8e956e3dc01e0174006ed79ae8cc0d1cd186abe78fa4e4df94ffc8def"

      def install
        bin.install "rill"
      end
    end
  end

  test do
    system "#{bin}/rill --version"
  end
end
