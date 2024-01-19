# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rill < Formula
  desc "The Rill CLI"
  homepage "https://github.com/rilldata/rill"
  version "0.39.1"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://cdn.rilldata.com/rill/v0.39.1/rill_darwin_arm64.zip"
      sha256 "b8ba8c2d1fd5dc04912e8e710cdf983f602c26a8ea2e5b88887326f246d261b3"

      def install
        bin.install "rill"
      end
    end
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.39.1/rill_darwin_amd64.zip"
      sha256 "adca739c67af2149709a84766cad33015bde3b89977ebd38944565b1f39d2490"

      def install
        bin.install "rill"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.39.1/rill_linux_amd64.zip"
      sha256 "1fb51347c32bdbf3c9af027881f0748d3033c543023d2ceda74135d1ca2c9edb"

      def install
        bin.install "rill"
      end
    end
  end

  test do
    system "#{bin}/rill --version"
  end
end
