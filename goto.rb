class Goto < Formula
  desc "ssh管理工具"
  homepage "https://github.com/kuroimachi/goto"
  url "https://github.com/kuroimachi/goto/releases/download/v7.0.0/goto"
  sha256 "0bba2eb6c118fe8cb715d2ff32bd7a6ba58e8fd5996799944bbdce3387c26d54"

  def install
    bin.install "goto"
    # 给执行权限（保险起见）
    chmod 0755, bin/"goto"
  end
end
