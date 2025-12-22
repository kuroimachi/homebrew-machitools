class Goto < Formula
  desc "ssh管理工具"
  homepage "https://github.com/kuroimachi/goto"
  url "https://github.com/kuroimachi/goto/releases/download/v1.0.3/goto"
  sha256 "7ca6fc5018d362dde8f83278c29e5e0bfec0c3f7b0e729739f4b797429eec9e5"

  def install
    bin.install "goto"
    # 给执行权限（保险起见）
    chmod 0755, bin/"goto"
  end
end
