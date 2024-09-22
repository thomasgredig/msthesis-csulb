%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Author: Thomas Gredig
% Date: 2024-09-22
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{csulb-msthesis}[2024/09/22 v1.0]%
\ProcessOptions*
\LoadClass[12pt,oneside, letterpaper, chapterprefix=on, numbers=noenddot]{scrbook}


% Page setup 
% ===================================
\RequirePackage[margin=1in, includefoot, heightrounded]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage{amssymb,amsmath}
\pagestyle{plain} % remove headers




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
\DeclareDocumentCommand{\author}{m}{\newcommand{\authorname}{#1}\renewcommand{\@author}{#1}}
\NewDocumentCommand{\supervisor}{m}{\newcommand{\advisorname}{#1}}

\NewDocumentCommand{\degree}{m}{\newcommand{\degreename}{#1}}
\NewDocumentCommand{\addresses}{m}{\newcommand{\addressname}{#1}}
\NewDocumentCommand{\university}{m}{\newcommand{\univname}{#1}}
\NewDocumentCommand{\department}{m}{\newcommand{\deptname}{#1}}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% End of CSULB-MSTHESIS.CLS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
