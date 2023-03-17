# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sbomex < Formula
  desc "sbomex is a command line utility to help query and pull from Interlynk public SBOM"
  homepage "https://github.com/kchetans/sbomex"
  version "0.0.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kchetans/sbomex/releases/download/v0.0.9/sbomex-darwin-arm64"
      sha256 "a9526ff48678267775cee9894c1d5fa6c3100b08f2256e9ebba7720be1b3755d"

      def install
        bin.install "sbomex-darwin-arm64" => "sbomex-darwin-arm64"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kchetans/sbomex/releases/download/v0.0.9/sbomex-darwin-amd64"
      sha256 "ab04fe25d12296175a9e34540b81a7cbd7194ff363a77ae2e889a5b4e95ee2a1"

      def install
        bin.install "sbomex-darwin-amd64" => "sbomex-darwin-amd64"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kchetans/sbomex/releases/download/v0.0.9/sbomex-linux-amd64"
      sha256 "b4222e4899c1081d2d248aaa7a66d5c1d87f01984578d0cbf81e19cc21c32676"

      def install
        bin.install "sbomex-linux-amd64" => "sbomex-linux-amd64"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kchetans/sbomex/releases/download/v0.0.9/sbomex-linux-arm64"
      sha256 "25dbe98ccb57280c76b2c73fe51794e0eb18e9fecb7d6d7db21874aef2802a42"

      def install
        bin.install "sbomex-linux-arm64" => "sbomex-linux-arm64"
      end
    end
  end
end
