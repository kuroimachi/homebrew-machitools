class Goto < Formula
  desc "ssh管理工具"
  homepage "https://github.com/kuroimachi/goto"
  url "https://github.com/kuroimachi/goto/releases/download/v1.0.4/goto"
  sha256 "60119306a731a14010f4dfb5cf8aba495722765aa35f5c6ff8a4caa960875fb0"

  def install
    bin.install "goto"
    # 给执行权限（保险起见）
    chmod 0755, bin/"goto"
  end
end
