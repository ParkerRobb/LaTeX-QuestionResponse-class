%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                Introduction
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This class (questionresponse.cls) defines the layout/structure of a question and response document (e.g., worksheet, quiz, exam), and defines a command for identifying the content of questions and their corresponding responses agnostically to their formatting.
% All content should go in the template file (questionresponse.tex), not this file.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                Identification
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ProvidesClass{questionresponse}[2024-03-04 Class for formatting questions and responses]
\NeedsTeXFormat{LaTeX2e}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                Settings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\LoadClass{scrartcl}					% KOMA-script article class
\KOMAoptions{
	DIV=15, 							% Expands type area
	parskip=half						% Sets \parskip (copied from default.latex Pandoc template)
}					

\setlength{\leftskip}{1.5em}			% Indents entire paragraph
\setlength{\parindent}{-\leftskip}		% Creates hanging indent by reversing the effect of \leftskip on the first line of a paragraph

\deffootnote[1em]{1.5em}{1em}{%					% Resets KOMA-script footnote definition to default indents and style (from KOMA-script manual)
	\textsuperscript{\thefootnotemark}%
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                Packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{indentfirst}			% Applies indentation rules to first paragraph (LaTeX by default does not indent first paragraphs of sections)
\RequirePackage{xparse}					% Extends command optional argument customizability


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                Body
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%	\Question{Question text}[Optional response text]
\NewDocumentCommand{\Question}{m o}{
	\filbreak
	
	#1
	
	\IfNoValueF{#2}{
		\begin{quote}
			#2
		\end{quote}
	}
}
