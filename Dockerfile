FROM debian:10.1

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install --assume-yes texlive-latex-base texlive-latex-extra texlive-fonts-recommended texlive-fonts-extra

ENTRYPOINT ["pdflatex", "-interaction=nonstopmode", "-halt-on-error", "-output-directory", "/cv", "/cv/resume.tex"]
