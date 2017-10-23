# mynote
my note
CSDN：Node-Webkit允许采用Web技术开发本地应用的原理是什么？具体是如何实现的？

王文睿：项目的核心思想就是在DOM中跑的代码能够直接调用Node.js中运行的代码，所以核心的部分是把二者跑在同一个线程中。需要把Chromium进程的事件循环和Node.js的事件循环合并在一起，并且把二者的V8 JS引擎环境（Context）合并起来。
