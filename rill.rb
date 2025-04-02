# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rill < Formula
  desc "The Rill CLI"
  homepage "https://github.com/rilldata/rill"
  version "0.58.6"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.58.6/rill_darwin_amd64.zip"
      sha256 "483281aa7bf597e6b5e08922e9b2219060a0a27b0cac8b033511b2aa968ab8da"

      def install
        bin.install "rill"
      end
    end
    if Hardware::CPU.arm?
      url "https://cdn.rilldata.com/rill/v0.58.6/rill_darwin_arm64.zip"
      sha256 "94d73fc014d917a04a65ca9982a9165bd257ff5ed6c8a98c24c0caf1eaacb4ef"

      def install
        bin.install "rill"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://cdn.rilldata.com/rill/v0.58.6/rill_linux_amd64.zip"
        sha256 "720b8fb332def36b3bd002badf450cc313ae97322271920a2ec6b666faf6d46c"

        def install
          bin.install "rill"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://cdn.rilldata.com/rill/v0.58.6/rill_linux_arm64.zip"
        sha256 "5fa351ef80e89de5775e24f08743fbcea9ff4c4db1232be891eac2693f428e1a"

        def install
          bin.install "rill"
        end
      end
    end
  end

  test do
    system "#{bin}/rill --version"
  end
end
