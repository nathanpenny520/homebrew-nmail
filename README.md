# homebrew-nmail

Homebrew tap for [Nmail](https://github.com/nathanpenny520/Nmail) — AI 驱动的本地聚合邮箱客户端。

```bash
brew tap nathanpenny520/nmail https://github.com/nathanpenny520/homebrew-nmail
brew trust nathanpenny520/nmail            # Homebrew 7.0 起第三方 tap 须显式信任
brew install nathanpenny520/nmail/nmail
```

> **务必使用带 tap 前缀的全名安装**：homebrew/core 存在同名但无关的 `nmail` 公式（另一个终端邮箱客户端），裸 `brew install nmail` 装到的会是那个项目。
>
> Homebrew 7.0 起第三方 tap 默认不信任，未信任时公式拒绝加载，`brew tap` 会报「invalid syntax in tap!」并删除克隆（报错误导性强，实为信任问题），先 `brew trust` 即可。

Apple Silicon (macOS) only. Linux / Windows: `uvx --from nmail-app nmail` or the binaries from [Releases](https://github.com/nathanpenny520/Nmail/releases).
