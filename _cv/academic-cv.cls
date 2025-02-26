%-------------------------------------------------------------------------------
% Identification
%-------------------------------------------------------------------------------
\ProvidesClass{academic-cv}[Academic CV]
\NeedsTeXFormat{LaTeX2e}

%-------------------------------------------------------------------------------
% Packages
%-------------------------------------------------------------------------------
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[a4paper,11pt]{article}
\RequirePackage{xcolor}
\RequirePackage{ragged2e}
\RequirePackage{tabularx}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{fontawesome5}
\RequirePackage{hyperref}
\RequirePackage{geometry}
\RequirePackage[skins]{tcolorbox}
\RequirePackage{palatino}
\RequirePackage[british]{babel}
\RequirePackage{csquotes}
\RequirePackage[style=numeric,backend=biber]{biblatex}

%-------------------------------------------------------------------------------
% Personal information
%-------------------------------------------------------------------------------
\newcommand*{\photo}[1]{\def\@photo{#1}}
\newcommand*{\name}[2]{\def\@firstname{#1}\def\@lastname{#2}}
\newcommand*{\address}[1]{\def\@address{#1}}
\newcommand*{\mobile}[1]{\def\@mobile{#1}}
\newcommand*{\email}[1]{\def\@email{#1}}
\newcommand*{\homepage}[1]{\def\@homepage{#1}}
\newcommand*{\github}[1]{\def\@github{#1}}
\newcommand*{\orcid}[1]{\def\@orcid{#1}}

%-------------------------------------------------------------------------------
% Hyperref setup
%-------------------------------------------------------------------------------
\definecolor{darkblue}{RGB}{0,0,139}
\hypersetup{
    hidelinks,
    unicode=true,
    colorlinks=true,
    linkcolor=darkblue,
    filecolor=darkblue,
    urlcolor=darkblue
}
\urlstyle{same}

%-------------------------------------------------------------------------------
% Margins and alignment
%-------------------------------------------------------------------------------
\geometry{left=1.3cm,top=1cm,right=1.3cm,bottom=1.5cm}
\pagestyle{empty}
\raggedright
\setlength{\tabcolsep}{0in}

%-------------------------------------------------------------------------------
% Sectioning
%-------------------------------------------------------------------------------
\titleformat
    {\section}
    {\scshape\raggedright\large\bfseries}
    {}
    {0em}
    {\vspace{-4pt}}
    [\titlerule\vspace{-4pt}]

%-------------------------------------------------------------------------------
% Header
%-------------------------------------------------------------------------------
\newcommand{\makecvheader}{
    % Header width
    \newlength{\headertextwidth}
    \newlength{\headerphotowidth}
    \ifthenelse{\isundefined{\@photo}}{
        \setlength{\headertextwidth}{\textwidth}
        \setlength{\headerphotowidth}{0cm}
    }{
        \setlength{\headertextwidth}{0.75\textwidth}
        \setlength{\headerphotowidth}{0.23\textwidth}
    }

    % Personal information
    \newcommand{\@socialSep}{\space\textbar\space\space}
    \newcommand{\@iconSep}{\nobreak\space\space}
    \begin{minipage}[c]{\headertextwidth}
        \centering
        % Name
        {\Huge \@firstname{} \@lastname} \\[2pt]
        % Contact information
        \newbool{isFirst}
        \setbool{isFirst}{true}
        \ifthenelse{\isundefined{\@mobile}}{}{
            \ifbool{isFirst}{\setbool{isFirst}{false}}{\@socialSep}
            \faMobile\@iconSep\href{\@mobile}{\@mobile}
        }
        \ifthenelse{\isundefined{\@email}}{}{
            \ifbool{isFirst}{\setbool{isFirst}{false}}{\@socialSep}
            \faEnvelope\@iconSep\href{mailto:\@email}{\@email}
        }
        \\ \setbool{isFirst}{true}
        \ifthenelse{\isundefined{\@homepage}}{}{
            \ifbool{isFirst}{\setbool{isFirst}{false}}{\@socialSep}
            \faHome\@iconSep\href{http://\@homepage}{\@homepage}
        }
        \ifthenelse{\isundefined{\@github}}{}{
            \ifbool{isFirst}{\setbool{isFirst}{false}}{\@socialSep}
            \faGithub\@iconSep\href{https://github.com/\@github}{\@github}
        }
        \ifthenelse{\isundefined{\@orcid}}{}{
            \ifbool{isFirst}{\setbool{isFirst}{false}}{\@socialSep}
            \faOrcid\@iconSep\href{https://orcid.org/\@orcid}{\@orcid}
        }
        % Address
        \ifthenelse{\isundefined{\@address}}{}{\\[2pt] \@address}
    \end{minipage}
    \begin{minipage}[c]{\headerphotowidth}
        \begin{tikzpicture}%
            \ifthenelse{\isundefined{\@photo}}{}{
                \node[rectangle, draw=black,line width=0.1mm, inner sep=1.8cm, 
                fill overzoom image=\@photo] () {};
            }
        \end{tikzpicture}
    \end{minipage}
}

%-------------------------------------------------------------------------------
% Lists
%-------------------------------------------------------------------------------
\newenvironment{cvlist}
    {\begin{itemize}[leftmargin=*,labelsep=1mm]}
    {\end{itemize}\vspace{-2mm}
}  

\newcommand{\cvitem}[2]{
    \item\textbf{#1}\space\space #2 \vspace{-2pt}
}

\newcommand{\cvheading}[5]{
    \item
    \begin{tabular*}{0.98\textwidth}[t]{l@{\extracolsep{\fill}}r}
        \textbf{#1} & \textit{\footnotesize{#4}} \\
        \textit{\footnotesize{#3}} &  \footnotesize{#2}\\
    \end{tabular*}
    \vspace*{-10pt}
    {\small #5}
}

%-------------------------------------------------------------------------------
% Bibliography
%-------------------------------------------------------------------------------
\ExecuteBibliographyOptions{
    sortcites=true,
    sorting=ydnt,
    date=year,
    doi=false,
    url=false,
    isbn=false,
    eprint=false,
    defernumbers=true,
    giveninits=true,
    maxnames=5}

%\defbibheading{bibliography}[\bibname]{{\small\bfseries\scshape\underline{#1}}}

\newbibmacro{hyperlink}[1]{
    \iffieldundef{doi}{
        \iffieldundef{url}{
            \iffieldundef{eprinttype}{
                #1                        
            }{
                \href{https://arxiv.org/abs/\thefield{eprint}}{#1}
        }}{
            \href{\thefield{url}}{#1}
    }}{
        \href{http://dx.doi.org/\thefield{doi}}{#1}
    }
}

\DeclareFieldFormat{title}
    {\usebibmacro{hyperlink}{\hspace{-10pt}\mkbibemph{#1}}}
\DeclareFieldFormat[article,inproceedings, software]{title}
    {\usebibmacro{hyperlink}{\hspace{-6pt}\mkbibemph{#1}}}




