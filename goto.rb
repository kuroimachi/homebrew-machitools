class Goto < Formula
  desc "ssh管理工具"
  homepage "https://github.com/kuroimachi/goto"
  url "https://github.com/kuroimachi/goto/releases/download/v5.0.0/goto"
  sha256 "2140e6e7b5630578fcbeb37801b5cced091c7a222cdf3b9be14996c97b2dcb84"

  def install
    bin.install "goto"
    # 给执行权限（保险起见）
    chmod 0755, bin/"goto"
  end
end
