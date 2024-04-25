FROM danteev/texlive:2024-04-15

LABEL org.opencontainers.image.description="LaTeX container for GitHub Action latexmk"

# Install LaTeX test files
RUN mkdir -p /usr/local/src/latexmk/test
COPY article.tex /usr/local/src/latexmk/test/article.tex

# Configure entrypoint for GitHub Action
COPY entrypoint /usr/local/bin/entrypoint
RUN chmod 555 /usr/local/bin/entrypoint

ENTRYPOINT ["/usr/local/bin/entrypoint"]
