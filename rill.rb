# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rill < Formula
  desc "The Rill CLI"
  homepage "https://github.com/rilldata/rill"
  version "0.30.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://cdn.rilldata.com/rill/v0.30.0/rill_darwin_arm64.zip"
      sha256 "a2004eb3cb88331257649c152735e24db1ce636dcbe80f752c91b9d3a01f7004"

      def install
        bin.install "rill"
      end
    end
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.30.0/rill_darwin_amd64.zip"
      sha256 "05c608b394a5f4fec4813b7f006ddff34caf63781a9fd0b5d284c18b18f6136c"

      def install
        bin.install "rill"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.30.0/rill_linux_amd64.zip"
      sha256 "cd0e1ad36df3e9e9b2e2ff94f78ebe789cab9769f56bc159869fe2a5ddbc1011"

      def install
        bin.install "rill"
      end
    end
  end

  test do
    system "#{bin}/rill --version"
  end
end
