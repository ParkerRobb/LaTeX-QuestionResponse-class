
# Question-Response LaTeX class

This class defines the layout/structure of a question and response document (e.g., worksheet, quiz, exam), and defines a command for identifying the content of questions and their corresponding responses agnostically to their formatting.

## Installation

This class file must be located either in `texmf/tex/latex/questionresponse/` (the user’s `texmf` directory) or in the same directory as the `.tex` document that calls it.

## Usage

To use, specify `questionresponse` as the document’s class.

Questions and their corresponsing responses should be identified using the `\Question` command that this class provides:
```latex
\Question{Question text}[Optional response text]
```

To create a fillable worksheet with space for handwritten answers, insert some `\vspace` for the response text.

## Pandoc `citeproc` side effect

Because Pandoc includes the reference section it generates in the main body of the LaTeX document, this class has the side effect of adding extra indentation to any Pandoc-generated reference section.
To reset the reference section indentation, the following code must be added to the end of any Markdown document on which Pandoc `citeproc` is run:
```latex
\setlength{\leftskip}{0em} 
```
