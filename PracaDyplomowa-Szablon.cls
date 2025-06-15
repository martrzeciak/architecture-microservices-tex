%--------------------------------------
% autorstwo szablonu: Krystian Łapa
% aktualizacja: Krzysztof Cpałka
% zgodność z~przepisami: 2024.10.26
% wymagane narzędzia: miktex, texstudio
%--------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{PracaDyplomowa-Szablon}[2024/10/26~-~Praca Inżynierska~-~Krystian Łapa]
\LoadClass[12pt, openany]{book}

\usepackage[a4paper, left=35mm, top=20mm, bottom=20mm, right=20mm]{geometry}
\usepackage{helvet}
\usepackage{times}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{graphicx}
\usepackage{emptypage}
\usepackage{fancyhdr}
\usepackage[polish]{babel}
\usepackage{listings}
\usepackage{color}
\usepackage{enumitem}
\usepackage{amssymb}
\usepackage{ulem}
\usepackage{caption}
\usepackage{float}

\lstset{%dotyczy listingów
frame=single,
basicstyle=\footnotesize\ttfamily,
breaklines=true,
numberstyle=\tiny\color{blue},
numbers=left,
numbersep=10pt,
inputencoding=utf8,
extendedchars=true,
captionpos=b,
literate={ą}{{\k{a}}}1 {ę}{{\k{e}}}1 {ć}{{\c{c}}}1 {ł}{{\l}}1 {ń}{{\n}}1 {ó}{{\k{o}}}1 {ś}{{\k{s}}}1 {ź}{{\z}}1 {ż}{{\.{z}}}1
}

\newlist{itemizeModified}{itemize}{4}
\setlist[itemizeModified,1]{label={$\blacktriangleright$}, left=0cm, labelsep=1cm}
\let\olditemize\itemize
\let\endolditemize\enditemize
\renewenvironment{itemize}{
\begin{itemizeModified}
}{
\end{itemizeModified}
}

\setlength{\parindent}{1cm}

\newcommand{\sethelvet}{\renewcommand{\rmdefault}{phv}\normalfont}
\newcommand{\settimes}{\renewcommand{\rmdefault}{ptm}\normalfont}
\sethelvet

\renewcommand{\baselinestretch}{1.25}
\renewcommand\lstlistingname{Listing}
\renewcommand\lstlistlistingname{Spis listingów}
\def\@dotsep{4.5}
\newcommand{\titleeng}[1]{\newcommand{\@tieng}{#1}}
\newcommand{\album}[1]{\newcommand{\@album}{#1}}
\newcommand{\studia}[1]{\newcommand{\@studia}{#1}}
\newcommand{\poziom}[1]{\newcommand{\@poziom}{#1}}
\newcommand{\promotor}[1]{\newcommand{\@promotor}{#1}}
\newcommand{\dedykacja}[1]{\newcommand{\@dedykacja}{#1}}

\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyfoot[LE,RO]{\thepage}
\pagestyle{fancy}
\fancypagestyle{plain}{
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyfoot[LE,RO]{\thepage}
}

\newcommand{\frontpage}{
\thispagestyle{empty}
\begin{center}
\includegraphics[width=15cm]{fig_LogoWIiSI.png}\\
\vspace{96pt}
{\LARGE PRACA DYPLOMOWA INŻYNIERSKA} \\
\vspace{32pt}
{\Large\bf\@title} \\
\vspace{16pt}
\textit{{\Large\@tieng}} \\
\vspace{96pt}
\end{center}
{\hfill\begin{tabular}{l}
{\large\@author} \\
Nr albumu: \@album\\
Kierunek: Informatyka \\
Forma studiów: \@studia\\
\vspace{12pt}
Poziom studiów: \@poziom \\
{\large Promotor pracy:} \\
\@promotor
\end{tabular}} \\
\vspace*{\fill} \\
Praca przyjęta dnia: \\
Podpis promotora: \\
\begin{center}
\textit{Częstochowa}, \the\year{}
\end{center}
\ifdefined\@dedykacja
\cleardoublepage
\thispagestyle{empty}
\vspace*{\fill}\textit{\hfill\begin{tabular}{l}
\@dedykacja
\end{tabular}}
\fi
\cleardoublepage
\pagenumbering{arabic}
}

\newcommand{\oswiadczenie}{
\cleardoublepage
\pagestyle{empty}
\hfill Częstochowa, dd.mm.20rr
\vspace{24pt}\\
\noindent
Imię i~nazwisko: \@author\\
Nr albumu: \@album\\
Kierunek: Informatyka\\
Wydział: Informatyki i~Sztucznej Inteligencji\\
\vspace{32pt}
\begin{center}
\bf Oświadczenie autora pracy dyplomowej*
\end{center}
Oświadczam pod rygorem odpowiedzialności karnej, że złożona przeze mnie praca dyplomowa pt. \textit{„\@title”} jest moim samodzielnym opracowaniem i~nie zawiera treści uzyskanych w~sposób niezgodny z~obowiązującymi przepisami.
\vspace{6pt}\\
Jednocześnie oświadczam, że moja praca (w~całości ani we fragmentach) nie była wcześniej przedmiotem procedur związanych z~uzyskaniem tytułu zawodowego w~Politechnice Częstochowskiej.
\vspace{6pt}\\
Wyrażam/\sout{nie wyrażam}**~zgodę/\sout{zgody} na nieodpłatne wykorzystanie przez Politechnikę Częstochowską całości lub fragmentów wyżej wymienionej pracy w~publikacjach Politechniki Częstochowskiej.
\vspace{64pt}\\

{\hfill\begin{tabular}{c}
................................................................. \\
\small podpis studenta
\end{tabular}} \\
\vfill
\noindent \scriptsize*W przypadku zbiorowej pracy dyplomowej, dołącza się oświadczenia każdego ze współautorów pracy dyplomowej. \\
**Niepotrzebne skreślić.
}