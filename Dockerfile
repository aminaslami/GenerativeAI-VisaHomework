FROM jupyter/tensorflow-notebook

USER $NB_UID

RUN pip install --upgrade pip && \
    pip install transformers && \
    pip install pysrt && \
    fix-permissions "/home/jovyan"

COPY captions_english_api_key.srt 
Translator.ipynb ./    
