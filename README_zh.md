# LumiKitReminder

📖 [中文版](README_zh.md) | [English](README.md)

Lumi 及其兄弟应用共享的休息提醒基础设施。

本包暴露 `KitReminder` product 与模块。它是一个可复用的 kit，不是插件，
不包含任何宿主专属的装配或 UI 贡献。

## Package

- Manifest 包名：`LumiKitReminder`
- Product / Target：`KitReminder`
- Platform: macOS 14+
- Swift tools: 6.0

## 功能特性

- 可取消的提醒计时器，支持睡眠/唤醒后的补触发。
- 可插拔的生产与测试环境。
- 持久化的启用状态、选中间隔与自定义间隔。
- 由插件作用域存储支撑的每日提醒计数。
- 多屏幕提醒遮罩，带淡入淡出动画。

## Swift Package 集成

```swift
dependencies: [
    .package(url: "https://github.com/CofficLab/LumiKitReminder.git", from: "1.0.0")
]
```

然后将 product 加入消费方 target：

```swift
.product(name: "KitReminder", package: "LumiKitReminder")
```

宿主仍负责注册 `StorageProviding`。插件将自己作用域的存储目录传给
`ReminderEnvironment.attachStateStore(directory:)`。

## Testing

```sh
swift test
```
