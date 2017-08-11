apk add python3-dev \ 
&& postgresql-dev \ 
&& gcc 

pip install -U pip \
  && pip install -r requirements.txt \ 
  && pip install --upgrade wheel \
  && pip install --upgrade setuptools \
  && pip install psycopg2