# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rill < Formula
  desc "The Rill CLI"
  homepage "https://github.com/rilldata/rill"
  version "0.33.3"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://cdn.rilldata.com/rill/v0.33.3/rill_darwin_arm64.zip"
      sha256 "1364f88e4b0164e409b7a2434b314b603c6e98284bdbc5403276da553827affe"

      def install
        bin.install "rill"
      end
    end
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.33.3/rill_darwin_amd64.zip"
      sha256 "ef4e75ae1bca879e7cd09f61c9e1f9201bd10d74146ee47383c07dacb85378fb"

      def install
        bin.install "rill"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.33.3/rill_linux_amd64.zip"
      sha256 "3a5740531ac9f46981c16a9c21587cefca7bec2715e52fed183fdcb01a2628ad"

      def install
        bin.install "rill"
      end
    end
  end

  test do
    system "#{bin}/rill --version"
  end
end
