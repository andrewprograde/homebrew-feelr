# typed: false
# frozen_string_literal: true

class Feelr < Formula
  desc "Agent-friendly API simplification layer CLI (DEPRECATED TAP)"
  homepage "https://feelr.dev"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/progradetech/feelr/releases/download/v1.1.0/feelr_1.1.0_darwin_amd64.tar.gz"
      sha256 "4f81a94754c0652f84ab75ea3aeb6880df40b1cbb36eca66e4953cf2155d29a7"
    end
    if Hardware::CPU.arm?
      url "https://github.com/progradetech/feelr/releases/download/v1.1.0/feelr_1.1.0_darwin_arm64.tar.gz"
      sha256 "b8102246794058df81fdecc3b07914620b2db48f974edae4fea5c6120d01edb5"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/progradetech/feelr/releases/download/v1.1.0/feelr_1.1.0_linux_amd64.tar.gz"
      sha256 "5e1273facc43e01ae229b20de21d8ae91ccf80497f6c17d52e6f649540673b12"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/progradetech/feelr/releases/download/v1.1.0/feelr_1.1.0_linux_arm64.tar.gz"
      sha256 "feeec5476a6236f515ffc2d0350e81123bc592b71d82541e49f5d27446bf877f"
    end
  end

  deprecate! date: "2026-02-10", because: "tap moved to progradetech/feelr"

  def install
    bin.install "feelr"
  end

  def caveats
    <<~EOS
      This tap (andrewprograde/feelr) is deprecated.

      To switch to the new tap, run:

        brew untap andrewprograde/feelr
        brew install progradetech/feelr/feelr

      Future releases will only be published to progradetech/feelr.
    EOS
  end
end
