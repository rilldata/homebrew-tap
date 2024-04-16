# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rill < Formula
  desc "The Rill CLI"
  homepage "https://github.com/rilldata/rill"
  version "0.43.1"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.43.1/rill_darwin_amd64.zip"
      sha256 "93b8568b77fd0fdadbcc2b9ba834cd96a46bfd431048563b918ce2438535da44"

      def install
        bin.install "rill"
      end
    end
    if Hardware::CPU.arm?
      url "https://cdn.rilldata.com/rill/v0.43.1/rill_darwin_arm64.zip"
      sha256 "a15de613593b274d750728ac2bd774159bfb8cecd51c7d376ea147707d2c4d39"

      def install
        bin.install "rill"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.43.1/rill_linux_amd64.zip"
      sha256 "25890a51e726cd10b11285614810216ac56df4cb42498dec35903e404d4fb17b"

      def install
        bin.install "rill"
      end
    end
  end

  test do
    system "#{bin}/rill --version"
  end
end
