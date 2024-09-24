%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Author: Thomas Gredig
% Date: 2024-09-22
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{msthesis-csulb}[2024/09/22 v1.0]%
\ProcessOptions*
\LoadClass[12pt, oneside, letterpaper, chapterprefix=on, numbers=noenddot]{scrbook}

% chapterprefix outputs "Chapter 3" etc.

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

% Table of Contents
% ===================================
\RequirePackage{sectsty}
\chapterfont{\LARGE}
\allsectionsfont{\rmfamily\mdseries} % font weight to medium (regular weight)

\RequirePackage[titles]{tocloft} % The titles option causes the titles of the ToC, LoF, and LoT lists to be typeset using the default LATEX methods.
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}} % adds dots
\setlength{\cftchapindent}{0mm} % indent on left
\setlength{\cftbeforechapskip}{0.5em} % spacing between entries
\renewcommand{\cftchapaftersnum}{.}  % add a dot after number in TOC 
\setcounter{tocdepth}{0}

% Ensure TOC entries are not bold
\renewcommand{\cftchapfont}{\normalfont}
\renewcommand{\cftsecfont}{\normalfont}
\renewcommand{\cftsubsecfont}{\normalfont}

\renewcommand{\cftdotsep}{2}  % modify the density of dots in TOC


% Ensure page numbers in TOC are not bold
\renewcommand{\cftchappagefont}{\normalfont}
\renewcommand{\cftsecpagefont}{\normalfont}
\renewcommand{\cftsubsecpagefont}{\normalfont}

\chapterfont{\centering}

% \cftsetindents{chapter}{0em}{1.0em}  % {indent}{numwidth}
% \cftsetindents{section}{1em}{2.0em}
% 
% \renewcommand\addchaptertocentry[2]{%
%   \ifstr{#1}{}{%
%     \addtocentrydefault{chapter}{#1}{#2}%
%   }{%
%     \addtocentrydefault{chapter}{\hspace*{2em}#1.}{#2}%
% }}


%%% list of tables
\setlength{\cftbeforelottitleskip}{0pt} % keep at 1 inch margin
\setlength{\cftafterlottitleskip}{0pt} % keep the double spacing
\renewcommand{\cftlottitlefont}{\hspace*{\fill}\normalsize\bfseries} % keep consistent font size
\renewcommand{\cftafterlottitle}{\hspace*{\fill}} % center title
\setlength{\cfttabindent}{0.25in}

%%% list of figures
\setlength{\cftbeforeloftitleskip}{0pt} % keep at 1 inch margin
\setlength{\cftafterloftitleskip}{0pt} % keep the double spacing
\renewcommand{\cftloftitlefont}{\hspace*{\fill}\normalsize\bfseries} % keep consistent font size
\renewcommand{\cftafterloftitle}{\hspace*{\fill}} % center title
\setlength{\cftfigindent}{0.25in}









%   Generate the environment for the abstract:
\newcommand\abstractname{\MakeUppercase{Abstract}}
\newenvironment{abstract}%
    {\begin{center}%
    \bfseries{\abstractname} %
    \end{center} %
    \hspace{10mm} %
    }
    

%   Generate the environment for the acknowledgements:    
\newcommand\acknowledgementsname{\MakeUppercase{Acknowledgements}}
\newenvironment{acknowledgements}%
    {\begin{center}%
    \bfseries{\acknowledgementsname} \end{center}}
    
% CSULB M.S. Thesis Definitions 
% ===================================
\NewDocumentCommand{\thesistitle} { o m }{%
 \IfValueTF{#1}{\def\shorttitle{#1}}{\def\shorttitle{#2}}%
 \def\@title{#2}%
 \def\ttitle{#2}%
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% see before-body.tex for extractions from _quarto.yml
\DeclareDocumentCommand{\author}{m}{\newcommand{\authorname}{#1}\renewcommand{\@author}{#1}}

\NewDocumentCommand{\thesissubtitle}{m}{\newcommand{\subttitle}{#1}}
\NewDocumentCommand{\thesisdated}{m}{\newcommand{\thesisdate}{#1}}
\NewDocumentCommand{\advisor}{m}{\newcommand{\advisorname}{#1}}
\NewDocumentCommand{\degree}{m}{\newcommand{\degreename}{#1}}
\NewDocumentCommand{\addresses}{m}{\newcommand{\addressname}{#1}}
\NewDocumentCommand{\univ}{m}{\newcommand{\univname}{#1}}
\NewDocumentCommand{\department}{m}{\newcommand{\deptname}{#1}}
\NewDocumentCommand{\memberone}{m}{\newcommand{\memberonename}{#1}}
\NewDocumentCommand{\membertwo}{m}{\newcommand{\membertwoname}{#1}}
\NewDocumentCommand{\deptchair}{m}{\newcommand{\deptchairname}{#1}}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% End of msthesis-csulb.cls
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
