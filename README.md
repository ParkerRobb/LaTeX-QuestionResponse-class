
# Question-Response LaTeX class

This class defines the layout/structure of a question and response document (e.g., worksheet, quiz, exam), and defines a LaTeX command for identifying the content of questions and their corresponding responses agnostically to their formatting in LaTeX documents.

## Installation

This class file must be located either in `texmf/tex/latex/questionresponse/` (the user’s `texmf` directory) or in the same directory as the `.tex` document that calls it.

## Usage

To use, specify `questionresponse` as the document’s class.

### Markdown via Pandoc

Use normal paragraphs (NOT ordered lists) for questions.
To number questions without them being interpreted as ordered list items, add a backslash between the number and the period.
If a question has a corresponding response, use blockquotes for the response:
```markdown
1\. Question text
> Optional response text
```

In addition, `\filbreak` must be placed before and after every question–response pair so that page breaks do not split the pair.

To create a fillable worksheet with space for handwritten answers, insert some `\vspace` in place of the optional response text blockquote.

#### Pandoc `citeproc` side effect

Because Pandoc includes the reference section it generates in the main body of its intermediary LaTeX document, this class adds extra indentation to any Pandoc-generated reference section as a side effect.
If running Pandoc `citeproc` on a Markdown document, add the `\ResetRefSec` command provided by this class to the end of the document to reset the reference section indentation.

### LaTeX

Identify questions and their corresponding responses using the `\Question` command that this class provides:
```latex
\Question{Question text}[Optional response text]
```

To create a fillable worksheet with space for handwritten answers, insert some `\vspace` for the response text.
