# 理论计算机科学导引

这是手写讲义的 LaTeX 电子化版本。目前收录第 1 讲“引子”，内容包括二进制串、编码、无前缀编码、可数性与 Cantor 对角化。

- [编译后的讲义](./lecture-notes.pdf)
- [第 1 讲 LaTeX 源码](./chapters/lecture01.tex)
- [第 1 讲手写原稿](./TCS%20lec1.pdf)

## 编译

需要 XeLaTeX、`latexmk` 与包含 `ctex` 的 TeX Live 发行版：

```bash
make
```

生成的文件为 `lecture-notes.pdf`。运行 `make clean` 可清理构建产物。

## 追加讲次

1. 新建 `chapters/lecture02.tex`，以 `\chapter{标题}` 开头。
2. 在 `main.tex` 中增加 `\include{chapters/lecture02}`。
3. 在 `Makefile` 的依赖列表中加入新的章节文件。

定理、引理、推论、命题、定义与例分别使用独立计数器，并各自按讲次重置。例如第 2 讲中的第一条定理和第一条定义会分别编号为“定理 2.1”和“定义 2.1”。标签建议使用以下前缀：

| 对象 | 标签示例 |
| --- | --- |
| 讲次 | `chap:introduction` |
| 定理 | `thm:prefix-free-construction` |
| 引理 | `lem:binary-strings-countable` |
| 推论 | `cor:sequence-encoding` |
| 定义 | `def:encoding` |
| 公式 | `eq:concatenation-extension` |

正文中统一使用 `\cref{标签}` 引用，引用名称和编号会自动生成，避免手写序号在追加章节后失效。
