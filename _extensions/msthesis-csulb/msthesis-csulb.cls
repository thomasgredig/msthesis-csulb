%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author: Thomas Gredig
% Date: 2024-09-22
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{msthesis-csulb}[2025/11/22 v0.2]%
% First process any custom options
\ProcessOptions*
\LoadClass[12pt, 
           oneside, 
           letterpaper, 
           chapterprefix=on, % adds "Chapter 1" instead of "1"; noenddot makes "1" instead of "1."
           numbers=noenddot]{scrbook}  

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PACKAGES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Font: choose Times New Roman
\RequirePackage{fontspec}
\defaultfontfeatures{Ligatures=TeX}  % fontspec: convert -- and ''
\setmainfont{Times New Roman}

% Page setup 
\RequirePackage[margin=1in, includefoot, heightrounded]{geometry}
\RequirePackage{amssymb,amsmath}
\RequirePackage{setspace}  % for double-spacing

% Other Packages
\RequirePackage{xparse}    % \NewDocumentCommand
\RequirePackage{booktabs}  % midrule toprule etc for tables
\RequirePackage{longtable}
\RequirePackage{graphicx}
\RequirePackage{hyperref}  % phantomsection
\RequirePackage{siunitx}
\RequirePackage{lipsum}    % not needed
\RequirePackage{tocbasic}

% Indents and Justification
\RequirePackage{indentfirst} % indent first paragraph
\setlength{\parindent}{3em} % adjust indentation

\RequirePackage[document]{ragged2e} % ragged right margin
\setlength{\RaggedRightParindent}{\parindent}

% Captions
\usepackage[font=singlespacing,
            justification=raggedright,
            singlelinecheck=false,     % disables the check that normally centers single-line captions
            labelsep=period,  % Sets the separator between the label (e.g., “Figure 1.”)
            font=bf,
            labelfont=bf,
            margin=1in,
            compatibility=false]{caption}
            
%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% -------------------------------
% Font setup for Part and Chapter
% -------------------------------

% center and capitalize chapter titles

\renewcommand*\raggedchapter{\centering}
\addtokomafont{chapter}{\normalfont\large\bfseries\MakeUppercase}
\renewcommand*\chapterformat{%
  \MakeUppercase{\chaptername~\thechapter}\par
}


\DeclareTOCStyleEntries[
  indent=0pt,
  numwidth=2.5em,
  numsep=1em,
  linefill=\TOCLineLeaderFill,
  entryformat=\normalfont,      % entry text regular
  pagenumberformat=\normalfont,  % page number regular
  beforeskip=0.4\baselineskip]{tocline}{part,chapter,section}


\pagestyle{plain} % remove header line


%   Generate the environment for the abstract:    
\newenvironment{abstract}{
  \begin{center}
    \bfseries{ABSTRACT}
  \end{center}
}{}
    

%   Generate the environment for the acknowledgements:    
\newcommand\acknowledgementsname{ACKNOWLEDGEMENTS}
\newenvironment{acknowledgements}%
    {\begin{center}%
    \bfseries{\acknowledgementsname} 
    \end{center}}
    
% CSULB M.S. Thesis Definitions 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% see before-body.tex for extractions from _quarto.yml
\newcommand{\authorname}{} % create storage once
\makeatletter
\RenewDocumentCommand{\author}{m}{%
  \gdef\authorname{#1}%   for your own use
  \gdef\@author{#1}%      what \maketitle reads
}
\makeatother





%\DeclareDocumentCommand{\author}{m}{\newcommand{\authorname}{#1}\renewcommand{\@author}{#1}}

\NewDocumentCommand{\thesistitle}{m}{\newcommand{\thesistitlename}{#1}}
\NewDocumentCommand{\thesisdated}{m}{\newcommand{\thesisdate}{#1}}
\NewDocumentCommand{\advisor}{m}{\newcommand{\advisorname}{#1}}
\NewDocumentCommand{\degree}{m}{\newcommand{\degreename}{#1}}
\NewDocumentCommand{\addresses}{m}{\newcommand{\addressname}{#1}}
\NewDocumentCommand{\univ}{m}{\newcommand{\univname}{#1}}
\NewDocumentCommand{\department}{m}{\newcommand{\deptname}{#1}}
\NewDocumentCommand{\memberone}{m}{\newcommand{\memberonename}{#1}}
\NewDocumentCommand{\membertwo}{m}{\newcommand{\membertwoname}{#1}}
\NewDocumentCommand{\deptchair}{m}{\newcommand{\deptchairname}{#1}}
\NewDocumentCommand{\bsdegree}{m}{\newcommand{\bsdegreename}{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% End of msthesis-csulb.cls
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
