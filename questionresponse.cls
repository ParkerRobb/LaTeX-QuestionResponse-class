%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                Introduction
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This class (questionresponse.cls) defines the layout/structure of a question and response document (e.g., worksheet, quiz, exam), and defines a command for identifying the content of questions and their corresponding responses agnostically to their formatting.
% All content should go in the template file (questionresponse.tex), not this file.

% This class adds extra indentation to any Pandoc-generated reference section.
% To reset the reference section indentation, the following code must be added to the end of any Markdown document on which Pandoc citeproc is run:
%		\setlength{\leftskip}{0em} 


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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                Packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[document]{ragged2e}				% Sets whole document to ragged right (left-aligned)
	\setlength{\RaggedRightLeftskip}{1.5em}		% Indents entire paragraph
	\setlength{\RaggedRightParindent}{-\RaggedRightLeftskip}	% Creates hanging indent by reversing the effect of \RaggedRightLeftskip on the first line of a paragraph
\deffootnote[1em]{1.5em}{1em}{%					% Resets KOMA-script footnote definition to default indents and style (from KOMA-script manual)
	\textsuperscript{\thefootnotemark}%
}
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


%	\globalsetlength{length}{value}					% Global version of \setlength command that works inside a group [@bersWhySetlengthIneffective2016]
\makeatletter
\newlength\local@length@for@global
\newcommand\globalsetlength[2]{%
	\setlength{\local@length@for@global}{#2}%
	\global#1\local@length@for@global
}
\makeatother
%	\ReformatReferenceSection
\newcommand{\ReformatReferenceSection}{
	\globalsetlength{\leftskip}{0em} 				% \setlength doesn't work because it operates locally to the {}
}
