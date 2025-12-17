class Goto < Formula
  desc "ssh管理工具"
  homepage "https://github.com/kuroimachi/goto"
  url "https://github.com/kuroimachi/goto/releases/download/v4.0.0/goto"
  sha256 "a61969bcb08a494072b3691df3bc1cd59b5a82a2c03881d5ae873863369c1404"

  def install
    bin.install "goto"
    # 给执行权限（保险起见）
    chmod 0755, bin/"goto"
  end
end
