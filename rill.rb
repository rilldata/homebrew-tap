# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rill < Formula
  desc "The Rill CLI"
  homepage "https://github.com/rilldata/rill"
  version "0.29.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://cdn.rilldata.com/rill/v0.29.0/rill_darwin_arm64.zip"
      sha256 "ffeb93b1a1b3a3835472a1197f2342b71b2c8b9940ef6548db7b1dc3aed8a682"

      def install
        bin.install "rill"
      end
    end
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.29.0/rill_darwin_amd64.zip"
      sha256 "9ef7a05bb6b6598eea2836cdb3a50cb5df1659ad00b1fff752c22935f70684d9"

      def install
        bin.install "rill"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.29.0/rill_linux_amd64.zip"
      sha256 "0f52dfbd4f73e5154184c838706d8e3874a80a3e4a7bbc53d83b0bc8ce25e1ee"

      def install
        bin.install "rill"
      end
    end
  end

  test do
    system "#{bin}/rill --version"
  end
end
