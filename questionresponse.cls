%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                Introduction
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This class (questionresponse.cls) is to define the layout/structure of the template questionresponse.tex.
% All content should go in the template file (questionresponse.tex), not this file.

% Note that this class extra indentation to any generated reference section.
% To reset the reference section indentation, \setlength{\leftskip}{0em} must be added to the end of the document.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                Identification
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ProvidesClass{questionresponse}[2024-03-02 Class for formatting questions and responses]
\NeedsTeXFormat{LaTeX2e}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                Settings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\LoadClass{scrartcl}					% KOMA-script article class
\KOMAoptions{DIV=15}					% Expands type area
\setlength{\leftskip}{1.5em}			% Indents entire paragraph
\setlength{\parindent}{-1.5em}			% Creates hanging indent by reversing the effect of \leftskip on the first line of a paragraph


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                Packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{indentfirst}			% Applies indentation rules to first paragraph (LaTeX by default does not indent first paragraphs of sections)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                Body
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

