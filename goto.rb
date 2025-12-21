class Goto < Formula
  desc "ssh管理工具"
  homepage "https://github.com/kuroimachi/goto"
  url "https://github.com/kuroimachi/goto/releases/download/v1.0.1/goto"
  sha256 "8ccbfe9c36274052b161eb5cf4b0350839e17eca484ad22c3da0f322f62b9f2d"

  def install
    bin.install "goto"
    # 给执行权限（保险起见）
    chmod 0755, bin/"goto"
  end
end
