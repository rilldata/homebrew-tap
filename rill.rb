# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rill < Formula
  desc "The Rill CLI"
  homepage "https://github.com/rilldata/rill"
  version "0.37.3"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://cdn.rilldata.com/rill/v0.37.3/rill_darwin_arm64.zip"
      sha256 "21d63ee0a194fc7325613511cd4affa03b8c492d2622f48452af5f87e41c4bcb"

      def install
        bin.install "rill"
      end
    end
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.37.3/rill_darwin_amd64.zip"
      sha256 "cdb878ebe999ce38d7feba82a8320de2d3fe98bb6acfe5f84832a74616761b48"

      def install
        bin.install "rill"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.37.3/rill_linux_amd64.zip"
      sha256 "a7c1e40bfe683bfd461009967fae64f73064cbaa6966a562cea06c5f6d87d2cb"

      def install
        bin.install "rill"
      end
    end
  end

  test do
    system "#{bin}/rill --version"
  end
end
