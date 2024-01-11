# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rill < Formula
  desc "The Rill CLI"
  homepage "https://github.com/rilldata/rill"
  version "0.39.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://cdn.rilldata.com/rill/v0.39.0/rill_darwin_arm64.zip"
      sha256 "9895bb961bdee77183755b64d0b320253166e39a8610015e03c2786e35438042"

      def install
        bin.install "rill"
      end
    end
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.39.0/rill_darwin_amd64.zip"
      sha256 "8460a72e1fb05681d258bf592dcc81d04c3d07289856dfc2f0e043d5576d3bc7"

      def install
        bin.install "rill"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.39.0/rill_linux_amd64.zip"
      sha256 "f0d707f9ca96f03257682c45270da97e8f33b49b53c169de26d1693840d40c05"

      def install
        bin.install "rill"
      end
    end
  end

  test do
    system "#{bin}/rill --version"
  end
end
