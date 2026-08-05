# 理论计算机科学导引

这是手写讲义的 LaTeX 电子化版本。目前收录第 1–6 章以及 Lecture 1–8。
Chapter 与 Lecture 分别编号；一个 Chapter 可以包含多次 Lecture，
一次 Lecture 也可以跨越多个 Chapter。

- [编译后的讲义](./lecture-notes.pdf)
- [第 1 章 LaTeX 源码](./chapters/chapter01.tex)
- [Lecture 1 手写原稿](./TCS%20lec1.pdf)
- [第 2 章 LaTeX 源码](./chapters/chapter02.tex)
- [Lecture 2 手写原稿](./TCS%20lec2.pdf)
- [Lecture 3 手写原稿](./TCS%20lec3.pdf)
- [第 3 章 LaTeX 源码](./chapters/chapter03.tex)
- [第 4 章 LaTeX 源码](./chapters/chapter04.tex)
- [Lecture 4 手写原稿](./TCS%20lec4.pdf)
- [Lecture 5 手写原稿](./TCS%20lec5.pdf)
- [Lecture 6 手写原稿](./TCS%20lec6.pdf)
- [第 5 章 LaTeX 源码](./chapters/chapter05.tex)
- [Lecture 7 手写原稿](./TCS%20lec7.pdf)
- [第 6 章 LaTeX 源码](./chapters/chapter06.tex)
- [Lecture 8 手写原稿](./TCS%20lec8.pdf)

## 编译

需要 XeLaTeX、`latexmk` 与包含 `ctex` 的 TeX Live 发行版：

```bash
make
```

生成的文件为 `lecture-notes.pdf`。运行 `make clean` 可清理构建产物。

## 追加内容

新增 Chapter 时，新建以 `\chapter{标题}` 开头的 `chapters/chapterXX.tex`，
再更新 `main.tex` 与 `Makefile`。在现有 Chapter 中开始下一次 Lecture 时，
只需在对应位置加入 `\lecture`，不新建 `\chapter`。

定理、引理、推论、命题、定义与例分别使用独立计数器，并各自按 Chapter
重置。因此 Lecture 3 虽然开始了新的课次，但仍在第 2 章中，定理编号继续使用
“定理 2.x”。标签建议使用以下前缀：

| 对象 | 标签示例 |
| --- | --- |
| Chapter | `chap:introduction` |
| Lecture | `lec:boolean-circuits-continuation` |
| 定理 | `thm:prefix-free-construction` |
| 引理 | `lem:binary-strings-countable` |
| 推论 | `cor:sequence-encoding` |
| 定义 | `def:encoding` |
| 公式 | `eq:concatenation-extension` |

正文中统一使用 `\cref{标签}` 引用，引用名称和编号会自动生成，避免手写序号在追加章节后失效。
