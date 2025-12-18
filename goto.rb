class Goto < Formula
  desc "ssh管理工具"
  homepage "https://github.com/kuroimachi/goto"
  url "https://github.com/kuroimachi/goto/releases/download/v9.0.0/goto"
  sha256 "988bfa31443be936ca360d0e2a628f8a30369e80fcba638c79dcb00406ce7a01"

  def install
    bin.install "goto"
    # 给执行权限（保险起见）
    chmod 0755, bin/"goto"
  end
end
