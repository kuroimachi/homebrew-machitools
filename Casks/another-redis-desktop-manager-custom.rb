cask "another-redis-desktop-manager-custom" do
  version "1.0.1"
  sha256 "4f666d61a1b0d67129000bf55ddc5263d157e97df3dae6951cf2e61addfafc5f"

  url "https://github.com/kuroimachi/AnotherRedisDesktopManager/releases/download/v#{version}/Another.Redis.Desktop.Manager.zip"
  name "Another Redis Desktop Manager"
  desc "Another Redis Desktop Manager 二开版本"
  homepage "https://github.com/kuroimachi/AnotherRedisDesktopManager"

  # 关键配置：指定安装到 /Applications 的文件
  app "Another Redis Desktop Manager.app"

  # 安装后的自动处理脚本
  postflight do
    # 1. 修复可执行文件权限 (chmod +x)
    executable = "#{appdir}/Another Redis Desktop Manager.app/Contents/MacOS/Another Redis Desktop Manager"
    if File.exist?(executable)
      system_command "/bin/chmod", args: ["+x", executable], sudo: true
    end

    # 2. 移除隔离属性，解决“无法打开”的问题
    system_command "/usr/bin/xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/Another Redis Desktop Manager.app"],
                   sudo: true
  end

  # 可选：配置卸载时自动清理的缓存和偏好设置
  zap trash: [
    "~/Library/Application Support/another-redis-desktop-manager",
    "~/Library/Preferences/me.qishibo.anotherredisdesktopmanager.plist",
    "~/Library/Saved Application State/me.qishibo.anotherredisdesktopmanager.savedState",
  ]
end