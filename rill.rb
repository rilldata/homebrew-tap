# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rill < Formula
  desc "The Rill CLI"
  homepage "https://github.com/rilldata/rill"
  version "0.53.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.53.0/rill_darwin_amd64.zip"
      sha256 "7131190d815c86c18b2cece285d84f8034cdcc9315563efb1f53dd745f448462"

      def install
        bin.install "rill"
      end
    end
    if Hardware::CPU.arm?
      url "https://cdn.rilldata.com/rill/v0.53.0/rill_darwin_arm64.zip"
      sha256 "3ace473353eadeb56ad9054bff7c464bbf244c00a23abd4961ba6c019a50ec60"

      def install
        bin.install "rill"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://cdn.rilldata.com/rill/v0.53.0/rill_linux_amd64.zip"
        sha256 "b0bedd289e612e03554ae0a5af0ee124ecacb4867c22b78b89acfa2871b0b46b"

        def install
          bin.install "rill"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://cdn.rilldata.com/rill/v0.53.0/rill_linux_arm64.zip"
        sha256 "36fe07bdd45cad64142a2bf8ec961f0f922ddb0396ca3017ae8872adfe5338cb"

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
