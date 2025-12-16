class Goto < Formula
  desc "ssh管理工具"
  homepage "https://github.com/kuroimachi/goto"
  url "https://github.com/kuroimachi/goto/releases/download/v3.0.0/goto"
  sha256 "ffbc6d32f36154ae8c026dd5a3a87540c240179b2e88905b7df7c192622e0c94"

  def install
    bin.install "goto"
    # 给执行权限（保险起见）
    chmod 0755, bin/"goto"
  end
end
