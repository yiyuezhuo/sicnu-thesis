\ProvidesClass{sicnuthesis}[2018/04/24  Standard LaTeX Template for sicnu thesis]

%\LoadClass[a4paper,12pt]{article}
%\RequirePackage{ctex}
\LoadClass[a4paper,12pt]{ctexart}

%伪变量声明

\newcommand\sicnu@tokens@title{}
\newcommand\sicnu@tokens@author{}
\newcommand\sicnu@tokens@school{}
\newcommand\sicnu@tokens@major{}
\newcommand\sicnu@tokens@class{}
\newcommand\sicnu@tokens@studentid{}
\newcommand\sicnu@tokens@tutor{}
\newcommand\sicnu@tokens@date{}

\newcommand\sicnu@titleitem[1]{\underline{ \makebox[15.46em]{ #1 } }}

\newcommand\sicnu@maketitle{
    
    
    \begin{center}{ \zihao{2} 四川师范大学本科毕业论文 }
    
    \vspace{1cm} %手动增加行间距

    { \zihao{-2} \sicnu@tokens@title }%标题
    
    \vspace{1cm}
    
    \end{center}
    
    { \bf \zihao{-3} %
    \begin{tabular}{ r c }
        
        学生姓名 & \sicnu@titleitem{ \sicnu@tokens@author } \\

        院系名称 & \sicnu@titleitem{ \sicnu@tokens@school } \\

        专业名称 & \sicnu@titleitem{ \sicnu@tokens@major } \\

        班级     & \sicnu@titleitem{ \sicnu@tokens@class } \\

        学号     & \sicnu@titleitem{ \sicnu@tokens@studentid } \\

        指导老师 & \sicnu@titleitem{ \sicnu@tokens@tutor } \\

        完成时间 & \sicnu@titleitem{ \sicnu@tokens@date } 
    \end{tabular}
    }
    
}

\newenvironment{abstractch}{
    \zihao{-2} \begin{center} \bf 摘要 \end{center}
    %\addcontentsline{toc}{chapter}{abstract}
    \vspace{0.5cm}
    \zihao{-4}
}{
}

\newenvironment{keywordsch}{
    \zihao{-2} \begin{center} \bf 关键词 \end{center}
    %\addcontentsline{toc}{chapter}{abstract}
    \vspace{0.5cm}
    \zihao{-4}
}{
}

\newenvironment{abstracten}{
    \zihao{-2} \begin{center} \bf Abstract \end{center}
    %\addcontentsline{toc}{chapter}{abstract}
    \vspace{0.5cm}
    \zihao{-4}
}{
}

\newenvironment{keywordsen}{
    \zihao{-2} \begin{center} \bf Key words \end{center}
    %\addcontentsline{toc}{chapter}{abstract}
    \vspace{0.5cm}
    \zihao{-4}
}{
}

%伪变量赋值

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

% 引入frontmatter,mainmatter,backmatter
    \makeatletter

    \newcommand\frontmatter{%
        \cleardoublepage
      %\@mainmatterfalse
      \pagenumbering{roman}}

    \newcommand\mainmatter{%
        \cleardoublepage
     % \@mainmattertrue
      \pagenumbering{arabic}}

    \newcommand\backmatter{%
      \if@openright
        \cleardoublepage
      \else
        \clearpage
      \fi
     % \@mainmatterfalse
       }

    \makeatother
% 结束引入frontmatter,mainmatter,backmatter



\zihao{-4} %设置全局字号
\pagestyle{plain} %设置只有下方居中有页码 

%设置页边距
\usepackage[
  paper  = letterpaper,
  left   = 1.15in,
  right  = 1.15in,
  top    = 1.0in,
  bottom = 1.0in,
  ]{geometry}
\usepackage{setspace}
