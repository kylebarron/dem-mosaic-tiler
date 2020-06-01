FROM lambgeo/lambda:gdal2.4-py3.7-geolayer

WORKDIR /tmp

ENV PYTHONUSERBASE=/var/task

COPY dem_mosaic_tiler/ dem_mosaic_tiler/
COPY setup.py setup.py

# Install dependencies
RUN pip install . --user
RUN rm -rf dem_mosaic_tiler setup.py
