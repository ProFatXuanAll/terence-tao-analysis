\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myclass}[2023/07/26 My book class]

\LoadClass[a4paper,11pt]{book}

%------------------------------------------------------------------------------
% Load packages.
%------------------------------------------------------------------------------

% We use T1 as font encoding.
% This correctly shows code points within the range `0x00-0xFF'.
\RequirePackage[T1]{fontenc}

% We use UTF-8 as text encoding.
\RequirePackage[utf8]{inputenc}

% We set page layout to the same as the book `Linear Algebra (4e) by Stephen H. Friedberg'.
\RequirePackage[paperwidth=160mm,paperheight=240mm,left=4mm,right=4mm,top=20mm,bottom=20mm]{geometry}

% This includes package `amsfonts'.
% This package MUST be loaded BEFORE the package `mathtools'.
\RequirePackage{amssymb}

% This package includes the package `amsmath' and fixes bugs for `amsmath'.
\RequirePackage{mathtools}

% This package MUST be loaded AFTER the packages `amsmath' and `mathtools'.
\RequirePackage{amsthm}

% This package helps formatting table of content.
\RequirePackage{tocloft}

% This package provides customization on page header and footer.
\RequirePackage{fancyhdr}

% This package provides LaTex 3 command customization utilities.
\RequirePackage{xparse}

% We separate files into parts and chapters, and we import them with relative file path.
\RequirePackage{import}

% We create index for important people / theorems.
\RequirePackage{makeidx}

% This package adjusts character spacing at margins.
\RequirePackage{microtype}

% This package fixes bugs for the listing environments `enumerate', `itemize', and `description'.
\RequirePackage{enumitem}

% This package provides better quoting environment.
\RequirePackage{dirtytalk}

% This package parses lists inside the command `\newcommand'.
\RequirePackage{listofitems}

% This package provide a nice looking if-then-else structure and comparison functionalities.
\RequirePackage{ifthen}

% This package adds hyperlinks to labels and references.
% This package MUST be loaded AFTER all packages and BEFORE the package `cleveref'.
\RequirePackage{hyperref}

% We reset chapter numbers for each part of the book.
% This package MUST be loaded AFTER the package `hyperref'.
\RequirePackage{chngcntr}

% We capitalize type names of cross-references.
% This package MUST be loaded after the package `hyperref'.
% See `cleveref' for details.
\RequirePackage[capitalize]{cleveref}

%------------------------------------------------------------------------------
% Set up `fancyhdr' package.
%------------------------------------------------------------------------------

% We use `fancy' page style.
% All page style settings MUST be called AFTER the command `\pagestyle'.
% See `fancyhdr' for details.
\pagestyle{fancy}

% We set page header height to `15pt' so that chapter and section titles can fit into page header.
\setlength{\headheight}{15pt}

% We change formatting for chapter and section marks.
% We use `\markright' to make sure header use chapter information when section information is not available.
% This is need for appendix.
\renewcommand{\chaptermark}[1]{\markright{\textsf{\small Chap. \textrm{\thechapter} \quad #1}}}
\renewcommand{\sectionmark}[1]{\markright{\textsf{\small Sec. \textrm{\thesection} \quad #1}}}

% To customize page header and footer, one first need to clean up page header and footer settings.
\fancyhf{}

% We put page number on the left of page header.
\fancyhead[L]{\textbf{\textsf{\small \thepage}}}

% We put chapter and section information on the right of page header.
\fancyhead[R]{\rightmark}

% The `plain' page style is used for the first page of each chapter.
% We reset the `plain' page style to make page number style consistent.
\fancypagestyle{plain}{%
  \fancyhf{}% clear all fields
  \fancyfoot[C]{\textbf{\textsf{\small \thepage}}}%
  \renewcommand{\headrulewidth}{0pt}%
}

%------------------------------------------------------------------------------
% Set up `hyperref' package.
%------------------------------------------------------------------------------

\hypersetup{       % This macro come with `hyperref'.
  colorlinks=true, % Color hyperlinks.
  linkcolor=blue,  % Color local hyperlinks with blue.
  urlcolor=cyan,   % Color url links with cyan.
}

%------------------------------------------------------------------------------
% Set up page style.
%------------------------------------------------------------------------------

% Author informations.
\title{Notes for Analysis I and II (4e) by Terence Tao}
\author{ProFatXuanAll}
\date{\today}

% Allow page break in the middle of multi-line equations.
\allowdisplaybreaks

%------------------------------------------------------------------------------
% Set up theorem-like environments.
%------------------------------------------------------------------------------

% Text inside the body of theorem-like environments are set to Roman font.
% Theorem-like environments share their counters, counters follow sections and are reset in each section.
% (except for axioms, which counters are reset in each chapter).
% Exercises has their own counter.
% Notes do not use counter.
% See `amsthm' for details.
\theoremstyle{definition}
\newtheorem{ax}{Ax.}[chapter]
\newtheorem{ac}{A.Cor.}[section]
\newtheorem{ex}{Ex.}[section]
\newtheorem{thm}{Thm.}[section]
\newtheorem{cor}[thm]{Cor.}
\newtheorem{defn}[thm]{Def.}
\newtheorem{eg}[thm]{E.g.}
\newtheorem{lem}[thm]{Lem.}
\newtheorem{prop}[thm]{Prop.}
\newtheorem{rmk}[thm]{Rmk.}
\newtheorem*{note}{Note}

% Meta-proofs use remark style.
\theoremstyle{remark}
\newtheorem*{meta-proof}{Meta-proof}

%------------------------------------------------------------------------------
% Set up `cleveref' package.
%------------------------------------------------------------------------------

% Define plural form for theorem-like environments.
% See `cleveref' for details.
\crefname{ax}{Ax.}{Ax.}
\crefname{ac}{A.Cor.}{A.Cor.}
\crefname{chapter}{Ch.}{Ch.}
\crefname{cor}{Cor.}{Cor.}
\crefname{defn}{Def.}{Def.}
\crefname{eg}{E.g.}{E.g.}
\crefname{ex}{Ex.}{Ex.}
\crefname{lem}{Lem.}{Lem.}
\crefname{note}{Note}{Notes}
\crefname{prop}{Prop.}{Prop.}
\crefname{rmk}{Rmk.}{Rmk.}
\crefname{section}{Sec.}{Sec.}
\crefname{thm}{Thm.}{Thm.}

%------------------------------------------------------------------------------
% Set up `enumerate' environment.
%------------------------------------------------------------------------------

% We make item labels use alphabets surrounded by parentheses.
% See `enumitem' for details.
\renewcommand{\labelenumi}{\textnormal{\lparen}\alph{enumi}\textnormal{\rparen}}

%------------------------------------------------------------------------------
% Set up math style.
%------------------------------------------------------------------------------

% We use display style on inline math.
\everymath{\displaystyle}

%------------------------------------------------------------------------------
% Set up book structure counters.
%------------------------------------------------------------------------------

% We format part number as roman number in uppercases.
\renewcommand{\thepart}{\Roman{part}}

% Chapter counter is reset within each part.
% This must be done only when `hyperref' is loaded.
\counterwithin*{chapter}{part}

% We format chapter number as `part.chapter'.
\renewcommand{\thechapter}{\Roman{part}.\arabic{chapter}}

% We format section number as `part.chapter.section'.
\renewcommand{\thesection}{\Roman{part}.\arabic{chapter}.\arabic{section}}

% We display theorem tag as `part.chatper.section.theorem'.
\renewcommand{\thethm}{\Roman{part}.\arabic{chapter}.\arabic{section}.\arabic{thm}}

% We display equation tag as `part.chatper.equation'.
\renewcommand{\theequation}{\Roman{part}.\arabic{chapter}.\arabic{equation}}

% Adjust title number width in table of content.
\makeatletter
\renewcommand{\numberline}[1]{%
  \@cftbsnum #1\@cftasnum~\@cftasnumb%
}
\makeatother

% Formatting exercises section.
\NewDocumentCommand{\exercisesection}{}{
  \begin{center}
    --- Exercises ---
  \end{center}
}

%------------------------------------------------------------------------------
% Set up `makeidx' package.
%------------------------------------------------------------------------------

% We create index for important people / theorems.
\makeindex

% We define command \iindex so that we don't need to type the same index term twice.
\NewDocumentCommand{\iindex}{m}{#1\index{#1}}
