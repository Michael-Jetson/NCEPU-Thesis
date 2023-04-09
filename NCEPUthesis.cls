\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{NCEPUthesis}[2023/10/01 v1.0 LaTeX document class]
\LoadClass[a4paper]{article}

\RequirePackage[UTF8]{ctex}
\RequirePackage{graphicx}
\RequirePackage{amsmath}
\usepackage{graphicx}
\usepackage{enumerate}%项目编号
\usepackage{enumitem}
\usepackage{amsmath}
\usepackage{float} %指定图片位置
\usepackage{subfigure}%并排子图 共享标题 有子标题
\usepackage{caption}
\usepackage[scale=0.8]{geometry}
\RequirePackage{setspace}%用于设置行间距等
\usepackage{fontspec}%引入英文字体
\usepackage{fancyhdr}%自定义页眉页脚


\def\ncepu@logo@scale{}%logo放缩
\def\ncepu@logo@file{}%logo文件名
\def\ncepu@name{}%学生名字
\def\ncepu@teacher{}%指导老师名字
\def\ncepu@degreetype{}%学位类型
\def\ncepu@department{}%院系
\def\ncepu@class{}%班级

\def\ncepu@distance@logo@title{}%logo和标题间距离
\def\ncepu@title@font@size{}%设置标题字体大小
\def\ncepu@title{}%论文标题
\def\ncepu@abstract@text{}%摘要内容

\def\ncepu@en@title{}%英文标题

\newcommand{\LogoScale}[1]{\def\ncepu@logo@scale{#1}}
\newcommand{\LogoFile}[1]{\def\ncepu@logo@file{#1}}
\newcommand{\makeLogo}{
	\begin{figure}[htbp]
		\centering
		\includegraphics[scale=\ncepu@logo@scale]{\ncepu@logo@file}
\end{figure}}
\newcommand{\name}[1]{\def\ncepu@name{#1}}
\newcommand{\teacher}[1]{\def\ncepu@teacher{#1}}
\newcommand{\degreetype}[1]{\def\ncepu@degreetype{#1}}
\newcommand{\department}[1]{\def\ncepu@department{#1}}
\newcommand{\class}[1]{\def\ncepu@class{#1}}
\newcommand{\distanceLogoTitle}[1]{\def\ncepu@distance@logo@title{#1}}
\newcommand{\titleFontSize}[1]{\def\ncepu@title@font@size{#1}}
\newcommand{\NCEPUtitle}[1]{\def\ncepu@title{#1}}
\newcommand{\NCEPUentitle}[1]{\def\ncepu@en@title{#1}}
\newcommand{\enfont}{\fontspec{Times New Roman}}
\newcommand\dlmu[2][4cm]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}
\newcommand{\NCEPUdate}[1]{
	\begin{table}[b]
		\centering \zihao{3}{#1}
	\end{table}
}

\newcommand{\NCEPUcover}[1]{
	\makeLogo%打印logo
	\begin{center}
		\zihao{0}
		\textbf{#1}
	\end{center}
	\vspace{\ncepu@distance@logo@title}
	\begin{center}
		\zihao{\ncepu@title@font@size}
		\ncepu@title
	\end{center}
	\vspace{2cm}
	\begin{center}
		\zihao{2}
		\begin{tabular}{rl}
			&\makebox[4em][s]{学生} \hspace{0.5cm}\dlmu[5.5cm]{\ncepu@name}\\
			&\makebox[4em][s]{导师} \hspace{0.5cm}\dlmu[5.5cm]{\ncepu@teacher}\\
			&\makebox[4em][s]{申请学位} \hspace{0.5cm}\dlmu[5.5cm]{\ncepu@degreetype}\\
			&\makebox[4em][s]{院系} \hspace{0.5cm}\dlmu[5.5cm]{\ncepu@department} \\
			&\makebox[4em][s]{专业班级}	\hspace{0.5cm}\dlmu[5.5cm]{\ncepu@class}\\
		\end{tabular}
		\NCEPUdate{2023年4月7日}
	\end{center}
	\thispagestyle{empty}
}
\newcommand{\NCEPUabstract}{
	\begin{center}
		\heiti \zihao{1}
		\ncepu@title
	\end{center}
	\begin{center}
		\heiti \zihao{-2}
		摘要
\end{center}}
\newenvironment{NCEPUabstracttext}{\songti \zihao{-4}   \setlength{\baselineskip}{20pt} \linespread{1} \setlength{\parskip}{4pt}}{\\}

\newcommand{\NCEPUkeywords}[1]{\noindent
	{\heiti \zihao{4}关键词：}{\songti \zihao{-4}#1}\setcounter{page}{1}}

\newenvironment{NCEPUenabstract}{
	\newpage
	\begin{center}
		{\zihao{-1}\enfont{\ncepu@en@title}}
	\end{center}
	\begin{center}
		{\zihao{-2}\enfont{Abstract}}
	\end{center}
	\setmainfont{Times New Roman} \zihao{-4} \linespread{1.5}}{\\}
\newcommand{\NCEPUenkeywords}[1]
{
	\\
	{\zihao{4}\enfont{KeyWords:}}
	{\zihao{-4}\enfont{#1}}
	\newpage
}

\newcommand{\NCEPUsection}[1]
{
	{
		\centering	\heiti \zihao{-2}{\section{#1}}
		
	}

}
\newcommand{\NCEPUsubsection}[1]
{
	{
		\heiti \zihao{-3}{\subsection{#1}}
	}
}
\newcommand{\NCEPUsubsubsection}[1]
{
	{\heiti \zihao{4}
		{\subsubsection{#1}}
	}
}
\newcommand{\NCEPUhead}[1]
{
	\pagestyle{fancy}%用来设置页眉页脚
	\fancyhf{}%清空已有样式
	\chead{#1}
	\cfoot{\thepage}%页脚中间输出页码
}