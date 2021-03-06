FROM nfcore/base:1.7
LABEL authors="phil.ewels@scilifelab.se" \
      description="Docker image containing all requirements for the nfcore/rnaseq pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/flomicsbiotech-rnaseq/bin:$PATH
