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
      sha256 "555291e7f8ad80bfce851e83e0594504227ac3329103323f4825f9857a4a5847"

      def install
        bin.install "rill"
      end
    end
    if Hardware::CPU.intel?
      url "http://pkg.rilldata.com/rill/v0.15.0/rill_0.15.0_Darwin_amd64.tar.gz"
      sha256 "918c9b72425271ee46d77b79867f6f183723b7a3b77da809d0eab89eb466bfb6"

      def install
        bin.install "rill"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "http://pkg.rilldata.com/rill/v0.15.0/rill_0.15.0_Linux_amd64.tar.gz"
      sha256 "bd046e0865c16ceb4483ad7b6899fc25dd1bc85b577bebd4e646f9391c38ff59"

      def install
        bin.install "rill"
      end
    end
  end

  test do
    system "#{bin}/rill --version"
  end
end
