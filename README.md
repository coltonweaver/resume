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

This source was reconstructed from the previously published
`cbw_resume.pdf` (built June 2025 with pdfTeX 1.40.26), which had no source in
version control. The reconstruction was verified by extracting every text line
and its bounding box from both PDFs and diffing them: all 56 lines match in
content and position, with the sole exception of the header contact line, which
is 3.3pt narrower here because FontAwesome5 glyph metrics changed slightly
between TeX Live 2024 (original) and later releases.

### Known issues carried over from the original

These are reproduced faithfully rather than silently corrected — fix when
convenient:

- "Designed **an** implemented an on-host daemon" (Operations Daemon) should
  read "and implemented".
- `"Settings Framework"` uses straight quotes in the source, so both render as
  closing curly quotes (`”Settings Framework”`). Use `` ``Settings Framework'' ``
  for correct typography.
- The title reads "Senior Software Engineer" while coltonweaver.com says "Staff
  Software Engineer".
- Date separators are inconsistent: Experience uses `-`, Education uses `--`.
