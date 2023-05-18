\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{report-template}[2021/06/04 v1.0 Macros for report]

\LoadClass[a4paper, 11pt]{article}

\RequirePackage[a4paper, hmargin=25mm, vmargin=25mm]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage{listings}
\RequirePackage[en-GB]{datetime2}
\DTMlangsetup{showdayofmonth=false}
\RequirePackage{setspace}
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\RequirePackage{microtype}  % improve text
\RequirePackage[parfill]{parskip}  % remove indentation for paragraphs
\RequirePackage{xurl}  % helps breaking urls with \url{}

% Get variable values
\def\university#1{\def\@university{#1}}
\def\department#1{\def\@department{#1}}
\def\course#1{\def\@course{#1}}
\def\email#1{\def\@email{#1}}
\def\githubusername#1{\def\@githubusername{#1}}
\def\supervisors#1{\def\@supervisors{#1}}
\def\repository#1{\def\@repository{#1}}

% sans-serif font
% \renewcommand{\familydefault}{\sfdefault}
\renewcommand{\familydefault}{phv}

% Class options
\DeclareOption{project-plan}{\newcommand{\doctype}{Project Plan}}
\DeclareOption{final-report}{\newcommand{\doctype}{Final Report}}
\ProcessOptions\relax

% Title page
\newcommand{\maketitlepage}{
    \makeatletter
    \begin{titlepage}
        \begin{center}
    
        \begin{spacing}{1.5}
            {\LARGE
            \@university\\
            \@department\\
            \@course\\}
            \vspace*{\fill}
            {\LARGE
            Independent Research Project\\
            \doctype}
            \vspace*{\fill}
        \end{spacing}
    
        \begin{spacing}{1.5}
            {\Huge \@title}\\[1.5cm]
            {\Large by\\}
            {\LARGE \@author\\}
            \vspace{1.5cm}
            {\Large Email: \@email\\}
            {\Large GitHub username: \@githubusername}\\
            {\Large Repository: \@repository}\\[1.5cm]
            {\Large Supervisors:\\
            \@supervisors}
            \vspace*{\fill}   
        \end{spacing}
    
        \vspace*{\fill}
        
        {\Large \today}
        \end{center}
    \end{titlepage}
    \makeatother  
    \pagebreak
    \pagenumbering{arabic}
}

% Code styling
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

\lstdefinestyle{mystyle}{
    backgroundcolor=\color{backcolour},
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=false,
    breaklines=true,
    captionpos=b,
    keepspaces=true,
    numbers=left,
    numbersep=5pt,
    showspaces=false,
    showstringspaces=false,
    showtabs=false,
    tabsize=2
}
\lstset{style=mystyle}
