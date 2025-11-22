%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author: Thomas Gredig
% Date: 2024-09-22
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{msthesis-csulb}[2024/09/22 v0.1]%
\ProcessOptions*
\LoadClass[12pt, oneside, letterpaper, 
          chapterprefix=on, % adds "Chapter 1" instead of "1"; noenddot makes "1" instead of "1."
          numbers=noenddot]{scrbook}  
          
% Font: choose Times New Roman
\RequirePackage{fontspec}
\defaultfontfeatures{Ligatures=TeX}  % fontspec: convert -- and ''
\setmainfont{Times New Roman}

% Page setup 
\RequirePackage[margin=1in, includefoot, heightrounded]{geometry}
\RequirePackage{amssymb,amsmath}
\RequirePackage{setspace}  % for double-spacing

% Table of Contents
\RequirePackage{tocbasic} % for \DeclareTOCStyleEntry
\DeclareTOCStyleEntry[indent=10mm]{tocline}{chapter} % indent chapters, moved TOC, TOL, abstract to parts 
\DeclareTOCStyleEntry[beforeskip=4em]{tocline}{part}

\RequirePackage{titlesec}
\RedeclareSectionCommand[toclinefill=\TOCLineLeaderFill]{chapter}  % add dots to chapters
\renewcommand{\chaptertitlename}{CHAPTER}{}  % capitalize CHAPTER heading

\RedeclareSectionCommands[% change TOC fonts to medium weight from default bold face (md, bf, lf)
  tocentrynumberformat=\mdseries,%
  tocentryformat=\mdseries,%
  tocpagenumberformat=\mdseries,%
  beforeskip=0em, % Space before the section title
  afterskip=1em,  % Space after the section title
  font=\normalfont\normalsize\bfseries\centering % Font for the section title
]{part,chapter,section}


% Chapters
% Redefine the chapter format to center the title
\titleformat{\chapter}[display]
  {\normalfont\normalsize\bfseries\centering} % Format for the chapter title
  {\chaptertitlename\ \thechapter}      % Format for the chapter number
  {1pt}                                % Space between number and title
  {\MakeUppercase}                               % Format for the chapter title text

\titleformat{\section}[display]
  {\normalfont\normalsize\bfseries\centering} % Format for the chapter title
  {\chaptertitlename\ \thechapter}      % Format for the chapter number
  {1pt}                                % Space between number and title
  {\MakeUppercase}                               % Format for the chapter title text

\titleformat{\subsection}[display]
  {\normalfont\normalsize\bfseries\centering} % Format for the chapter title
  {\chaptertitlename\ \thechapter}      % Format for the chapter number
  {1pt}                                % Space between number and title
  {\MakeUppercase}                               % Format for the chapter title text


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
            compatibility=false]{caption}

% Other Packages
\RequirePackage{xparse}    % \NewDocumentCommand
\RequirePackage{booktabs}  % midrule toprule etc for tables
\RequirePackage{longtable}
\RequirePackage{graphicx}
\RequirePackage{hyperref} % phantomsection
\RequirePackage{siunitx}
\RequirePackage{lipsum}

\pagestyle{plain} % remove header line


%   Generate the environment for the abstract:
\newcommand\abstractname{\MakeUppercase{Abstract}}
\newenvironment{abstract}%
    {\begin{center}%
    \bfseries{\abstractname} %
    \end{center} %
    }
    

%   Generate the environment for the acknowledgements:    
\newcommand\acknowledgementsname{ACKNOWLEDGEMENTS}
\newenvironment{acknowledgements}%
    {\begin{center}%
    \bfseries{\acknowledgementsname} 
    \end{center}}
    
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
