# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rill < Formula
  desc "The Rill CLI"
  homepage "https://github.com/rilldata/rill-developer"
  version "0.26.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://cdn.rilldata.com/rill/v0.26.0/rill_darwin_arm64.zip"
      sha256 "bb1ca7fcec4814b10ed5363859dcc0304e97079b4e61b6418cf1497fbf54a7b9"

      def install
        bin.install "rill"
      end
    end
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.26.0/rill_darwin_amd64.zip"
      sha256 "e92f241f8ae7a61c6f6b2a36a20450de3ea14a886136556e987c68a79870a6ac"

      def install
        bin.install "rill"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.26.0/rill_linux_amd64.zip"
      sha256 "6bc4099a94de59ead15b7da6fe074d23ba4b7bc07e3b63fb07ba6c06ff936bf4"

      def install
        bin.install "rill"
      end
    end
  end

  test do
    system "#{bin}/rill --version"
  end
end
