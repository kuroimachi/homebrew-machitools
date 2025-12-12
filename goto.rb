class Goto < Formula
  desc "ssh管理工具"
  homepage "https://github.com/kuroimachi/goto"
  url "https://github.com/kuroimachi/goto/releases/download/v2.0.0/goto"
  sha256 "2189ce7d44492ce4daf737cf9f9ecaaad9f8d3749e476f5c6d779e6fa6d9b40c"

  def install
    bin.install "goto"
    # 给执行权限（保险起见）
    chmod 0755, bin/"goto"
  end
end
