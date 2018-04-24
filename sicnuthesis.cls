\ProvidesClass{sicnuthesis}[2018/04/24  Standard LaTeX Template for sicnu thesis]

\LoadClass{ctexart}

\newcommand\sicnu@tokens@title{}
\newcommand\sicnu@tokens@author{}
\newcommand\sicnu@tokens@school{}
\newcommand\sicnu@tokens@major{}
\newcommand\sicnu@tokens@class{}
\newcommand\sicnu@tokens@studentid{}
\newcommand\sicnu@tokens@tutor{}
\newcommand\sicnu@tokens@date{}


\newcommand\sicnu@maketitle{
\centering{ \Huge{ 四川师范大学本科毕业论文 }}

\centering{\huge \sicnu@tokens@title }%标题

学生姓名 \underline{ \sicnu@tokens@author }

院系名称 \underline{ \sicnu@tokens@school }

专业名称 \underline{ \sicnu@tokens@major }

班级 \underline{ \sicnu@tokens@class }

学号 \underline{ \sicnu@tokens@studentid }

指导老师 \underline{ \sicnu@tokens@tutor }

完成时间 \underline{ \sicnu@tokens@date }
}

\renewcommand{\maketitle}{\sicnu@maketitle}

\renewcommand\title[1]{ \renewcommand{\sicnu@tokens@title}{#1} }
\renewcommand\author[1]{ \renewcommand{\sicnu@tokens@author}{#1} }
%\newcommand\title[1]{\renewcommand{\sicnu@tokens@title}{#1}}
%\newcommand\author[1]{\renewcommand{\sicnu@tokens@author}{#1}}
\newcommand\school[1]{\renewcommand{\sicnu@tokens@school}{#1}}
\newcommand\major[1]{\renewcommand{\sicnu@tokens@major}{#1}}
\newcommand\class[1]{\renewcommand{\sicnu@tokens@class}{#1}}
\newcommand\studentid[1]{\renewcommand{\sicnu@tokens@studentid}{#1}}
\newcommand\tutor[1]{\renewcommand{\sicnu@tokens@tutor}{#1}}
%\newcommand\date[1]{\renewcommand{\sicnu@tokens@date}{#1}}
\renewcommand\date[1]{ \renewcommand{\sicnu@tokens@date}{#1} }
