class Goto < Formula
  desc "ssh管理工具"
  homepage "https://github.com/kuroimachi/goto"
  url "https://github.com/kuroimachi/goto/releases/download/v1.0.2/goto"
  sha256 "e5fcf11fcc102da635d8dc8aaf7aa529861f10aeb6ad690f44c5912730622ece"

  def install
    bin.install "goto"
    # 给执行权限（保险起见）
    chmod 0755, bin/"goto"
  end
end
