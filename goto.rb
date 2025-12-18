class Goto < Formula
  desc "ssh管理工具"
  homepage "https://github.com/kuroimachi/goto"
  url "https://github.com/kuroimachi/goto/releases/download/v8.0.0/goto"
  sha256 "0d9904b662251e0c4091a3e255bd90e1a366bc97dafa66d6e4af182308ef7a78"

  def install
    bin.install "goto"
    # 给执行权限（保险起见）
    chmod 0755, bin/"goto"
  end
end
