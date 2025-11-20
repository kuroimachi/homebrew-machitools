class Goto < Formula
  desc "ssh管理工具"
  homepage "https://github.com/kuroimachi/goto"
  url "https://github.com/kuroimachi/goto/releases/download/v1.0.0/goto"
  sha256 "ede0f7d5cf52d170e8804e825e7c8b8d5ae1f4a79815a65effb351fea330010d"

  def install
    # 给执行权限（保险起见）
    chmod 0755, bin/"goto"
  end
end
