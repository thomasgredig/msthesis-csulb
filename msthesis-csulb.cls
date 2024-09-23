%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Author: Thomas Gredig
% Date: 2024-09-22
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{csulb-msthesis}[2024/09/22 v1.0]%
\ProcessOptions*
\LoadClass[12pt, oneside, letterpaper, chapterprefix=on, numbers=noenddot]{scrbook}

% Font: choose Times New Roman
% ===================================
\RequirePackage{fontspec}
\setmainfont{Times New Roman}

\RequirePackage{setspace}  % for double-spacing

% Page setup 
% ===================================
\RequirePackage[margin=1in, includefoot, heightrounded]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage{amssymb,amsmath}
\pagestyle{plain} % remove headers

\RequirePackage{indentfirst} % indent first paragraph
\setlength{\parindent}{2em} % adjust indentation 

% using only left justification (ragged right margin)
\RequirePackage[document]{ragged2e} % ragged right
\setlength{\RaggedRightParindent}{\parindent}



%   Generate the environment for the abstract:
\newcommand\summaryname{Abstract}
\newenvironment{abstract}%
    {\small\begin{center}%
    \bfseries{\summaryname} \end{center}}
    
    

% CSULB M.S. Thesis Definitions 
% ===================================
\NewDocumentCommand{\thesistitle} { o m }{%
 \IfValueTF{#1}{\def\shorttitle{#1}}{\def\shorttitle{#2}}%
 \def\@title{#2}%
 \def\ttitle{#2}%
}
% see 
\DeclareDocumentCommand{\author}{m}{\newcommand{\authorname}{#1}\renewcommand{\@author}{#1}}
\NewDocumentCommand{\advisor}{m}{\newcommand{\advisorname}{#1}}
\NewDocumentCommand{\degree}{m}{\newcommand{\degreename}{#1}}
\NewDocumentCommand{\addresses}{m}{\newcommand{\addressname}{#1}}
\NewDocumentCommand{\univ}{m}{\newcommand{\univname}{#1}}
\NewDocumentCommand{\department}{m}{\newcommand{\deptname}{#1}}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% End of CSULB-MSTHESIS.CLS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
