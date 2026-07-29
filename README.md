# resume

LaTeX source for Colton Weaver's resume.

The PDF is built by CI on every push to `master` and published as
`cbw_resume.pdf` on the `latest` release, which gives it a stable download URL:

```
https://github.com/coltonweaver/resume/releases/latest/download/cbw_resume.pdf
```

`coltonweaver.com` links to that artifact, so updating the resume is just:
edit `cbw_resume.tex`, commit, push.

## Building locally

Needs a TeX distribution with `fontawesome5`, `titlesec`, `enumitem`, and
`geometry`. On Ubuntu:

```sh
sudo apt-get install texlive-latex-recommended texlive-latex-extra \
                    texlive-fonts-recommended texlive-fonts-extra latexmk
```

Then:

```sh
make          # build cbw_resume.pdf
make clean    # remove build artifacts
```

## Provenance

This source was reconstructed from the previously published `cbw_resume.pdf`
(built June 2025 with pdfTeX 1.40.26), which had no source in version control.
The reconstruction was verified by extracting every text line and its bounding
box from both PDFs and diffing them: all 56 lines matched in content and
position, with the sole exception of the header contact line, which is 3.3pt
narrower because FontAwesome5 glyph metrics changed slightly between TeX Live
2024 (original) and later releases.

That byte-for-line equivalence holds at the initial commit. Content has
intentionally diverged since — see the history.

## Layout notes

The resume is tuned to fit on exactly one page, with roughly 7pt of vertical
slack as of the latest content. If an addition pushes Technical Skills onto a
second page, either trim content or reclaim space via the `\vspace` values in
the custom commands near the top of `cbw_resume.tex` (`\resumeItem`,
`\resumeSubheading`, `\resumeItemListEnd`).

A few things worth knowing before editing:

- `\resumeLink` wraps its text in `\underline`, which boxes the argument — a
  linked phrase will never break across lines.
- A `\vspace` immediately after `\end{center}` starts a new paragraph and adds a
  full baselineskip. Fold header spacing changes into the `\vspace` after the
  name instead.
- Keep linked phrases short. A long `\resumeLink` that lands on its own line
  renders as a near-full-width underline that reads as a stray horizontal rule.
