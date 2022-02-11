FROM apache/superset
 
# Switching to root to install the required packages
USER root
 
# Installing Athena driver
RUN pip install "PyAthena>1.2.0"
 
# Switching back to using the `superset` user
USER superset