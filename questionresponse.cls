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
\setlength{\leftskip}{1.5em}			% Indents entire paragraph
\setlength{\parindent}{-\leftskip}		% Creates hanging indent by reversing the effect of \leftskip on the first line of a paragraph


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                Packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{indentfirst}			% Applies indentation rules to first paragraph (LaTeX by default does not indent first paragraphs of sections)
\RequirePackage{xparse}					% Extends command optional argument customizability


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                Body
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NewDocumentCommand{\Question}{m o}{
	\filbreak
	
	#1
	
	\IfNoValueF{#2}{
		\begin{quote}
			#2
		\end{quote}
	}
}
