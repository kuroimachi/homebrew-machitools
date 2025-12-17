class Goto < Formula
  desc "ssh管理工具"
  homepage "https://github.com/kuroimachi/goto"
  url "https://github.com/kuroimachi/goto/releases/download/v6.0.0/goto"
  sha256 "90aafd73fe621a13e50f396cc758eb9d2ccb62b7399be8dfd1cd2c31807fdfc5"

  def install
    bin.install "goto"
    # 给执行权限（保险起见）
    chmod 0755, bin/"goto"
  end
end
