FROM debian:10.1

RUN apt-get update && apt-get install --yes --no-install-recommends \
    	texlive-fonts-recommended \
	texlive-generic-recommended \
	texlive-latex-extra \
	texlive-fonts-extra \
	dvipng \
	texlive-latex-recommended \
	texlive-base \
	texlive-pictures \
	texlive-lang-cyrillic \
	texlive-science \
	cm-super \
	texlive-generic-extra 

COPY ./do_the_job.sh /

RUN chmod +x do_the_job.sh

ENTRYPOINT ["/do_the_job.sh"]
