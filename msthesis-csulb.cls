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
\RequirePackage{lipsum}
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

% Part headings (e.g., "PART I INTRODUCTION")
\setkomafont{part}{\normalfont\bfseries\centering}
\renewcommand*\chapterformat{\MakeUppercase{\chaptername~\thechapter}\enskip}

% Chapter headings (e.g., "CHAPTER 1 INTRODUCTION")
\setkomafont{chapter}{\normalfont\bfseries\centering}
% Center *both* the label line (#2) and the title (#3)
\makeatletter
\renewcommand*\chapterlinesformat[3]{%
  \centering
  {\usekomafont{chapter}\MakeUppercase{#2}\par}% line 1: CHAPTER 1
  \vspace{1ex}% vertical space between lines
  {\usekomafont{chapter}\MakeUppercase{#3}\par}% line 2: TITLE
}
\makeatother

%\DeclareTOCStyleEntry[font=\MakeUppercase]{part}

\DeclareTOCStyleEntries[
  indent=0pt,
  numwidth=2.5em,
  numsep=1em,
  linefill=\TOCLineLeaderFill,
  entryformat=\normalfont,      % entry text regular
  pagenumberformat=\normalfont  % page number regular
]{tocline}{part,chapter,section}

%\DeclareTOCStyleEntry[entryformat=\MakeUppercase]{tocline}{part}



% 
% %\KOMAoptions{listof=chapterentry, listof=totoc}
% \setkomafont{part}{\normalfont\bfseries\centering}
% %\RequirePackage{tocbasic} % for \DeclareTOCStyleEntry
% % indent chapters, moved TOC, TOL, abstract to parts 
% %\renewcommand{\chaptertitlename}{CHAPTER}{}  % capitalize CHAPTER heading
% %\renewcommand{\chapternumberline}[1]{CHAPTER~#1.\quad}
% % Table of Contents
% %\DeclareTOCStyleEntry[entryformat=\MakeUppercase]{tocline}{part}
% 
% \RedeclareSectionCommands[% change TOC fonts to medium weight from default bold face (md, bf, lf)
%   tocentrynumberformat=\mdseries,%
%   tocentryformat=\mdseries, %\MakeUppercase,% UPPERCASE the entry text
%   tocpagenumberformat=\mdseries,%
%   beforeskip=0em, % Space before the section title
%   afterskip=0em,  % Space after the section title
%   font=\normalfont\normalsize\bfseries\centering % Font for the section title
% ]{part,chapter,section}
% 
% \RedeclareSectionCommand[toclinefill=\TOCLineLeaderFill]{chapter}  % add dots to chapters
% \RedeclareSectionCommand[toclinefill=\TOCLineLeaderFill]{part}
% \DeclareTOCStyleEntries[indent=4pt,
%                         %entryformat=\em  % cannot use \MakeUppercase
%                         beforeskip=4pt]{tocline}{part,chapter,section}
% % \RequirePackage{titlesec}
% 
% 
% % Uppercase "CHAPTER"
% %\renewcommand{\chaptername}{CHAPTER}
% 
% 
% % Keep standard spacing
% \RedeclareSectionCommand[
%   beforeskip=0pt,
%   afterskip=1ex plus .2ex,
%   afterindent=false
% ]{chapter}
% %\DeclareTOCStyleEntry[entryformat=\MakeUppercase,pagenumberformat=\MakeUppercase]{tocline}{chapter}
% 
% % Center both label and title, boldface, uppercase
% \setkomafont{chapter}{\normalfont\normalsize\bfseries\centering}
% 
% % Put CHAPTER N and title on separate lines, both uppercase
% \renewcommand*\chapterlinesformat[3]{%
%   % #1 = section level, #2 = number line, #3 = title
%   \centering
%   {\normalfont\normalsize\bfseries\MakeUppercase{#2}\par}% line 1: CHAPTER N
%   \vspace{1ex}% vertical space between lines
%   {\normalfont\normalsize\bfseries\MakeUppercase{#3}\par}% line 2: TITLE
% }
% 
% % Optional: add dot and spacing after chapter number
% \renewcommand*\chapterformat{\MakeUppercase{\chaptername~\thechapter}\enskip}
% 
% 
% %\renewcommand*\chapterformat{\chaptername~\thechapter \enskip}
% %\DeclareTOCStyleEntry[entryformat=\MakeUppercase]{tocline}{chapter}
% 
% % Chapters
% % Redefine the chapter format to center the title
% % \titleformat{\chapter}[display]
% %   {\normalfont\normalsize\bfseries\centering} % Format for the chapter title
% %   {\chaptertitlename\ \thechapter}      % Format for the chapter number
% %   {1pt}                                % Space between number and title
% %   {\MakeUppercase}                      % Format for the chapter title text
% % 
% % \titleformat{\section}[display]
% %   {\normalfont\normalsize\bfseries\centering} % Format for the chapter title
% %   {\chaptertitlename\ \thechapter}      % Format for the chapter number
% %   {1pt}                                % Space between number and title
% %   {\MakeUppercase}                               % Format for the chapter title text
% % 
% % \titleformat{\subsection}[display]
% %   {\normalfont\normalsize\bfseries\centering} % Format for the chapter title
% %   {\chaptertitlename\ \thechapter}      % Format for the chapter number
% %   {1pt}                                % Space between number and title
% %   {\MakeUppercase}                               % Format for the chapter title text
% 
% 






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
% ===================================
% \NewDocumentCommand{\thesistitle} { o m }{%
%  \IfValueTF{#1}{\def\shorttitle{#1}}{\def\shorttitle{#2}}%
%  \def\@title{#2}%
%  \def\ttitle{#2}%
% }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% see before-body.tex for extractions from _quarto.yml
\newcommand{\authorname}{} % create storage once
\makeatletter
\RenewDocumentCommand{\author}{m}{%
  \gdef\authorname{#1}%   for your own use
  \gdef\@author{#1}%      what \maketitle reads
}
\makeatother


\makeatletter
\DeclareTOCStyleEntry[
  indent=1.5em,
  numwidth=2.3em,
  linefill=\TOCLineLeaderFill
]{tocline}{table}
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
