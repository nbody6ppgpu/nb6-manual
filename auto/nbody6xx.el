(TeX-add-style-hook
 "nbody6xx"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("report" "11pt" "twoside" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fontenc" "T1") ("epsfig" "dvips")))
   (TeX-run-style-hooks
    "latex2e"
    "head"
    "introduction"
    "history"
    "startrun"
    "inputvar"
    "thresholds"
    "diagnostics"
    "parallel"
    "hermite"
    "timesteps"
    "neighbourscheme"
    "regularization"
    "nbunits"
    "output_unit"
    "flowchart"
    "references"
    "report"
    "rep11"
    "fontenc"
    "mathptmx"
    "amssymb"
    "lscape"
    "longtable"
    "eepic"
    "epsfig"
    "fancyheadings"
    "auto-pst-pdf"
    "float"))
 :latex)

