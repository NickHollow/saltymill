update_data:
  cmd.run:
    - name: |
      rm -f australia-latest.osm.pbf
      echo --- Downloading data.
      #wget -q http://download.geofabrik.de/openstreetmap/australia-oceania/australia-latest.osm.pbf
      wget -q http://gis.researchmaps.net/australia-latest.osm.pbf

{{tm_dir}}/import.sh:
  cmd.run:
    - cwd: {{tm_dir}}
    - user: ubuntu
    - group: ubuntu
    - require: [ cmd: install_postgis ]

{{tm_dir}}/process.sh:
  cmd.run:
    - cwd: {{tm_dir}}
    - user: ubuntu
    - group: ubuntu
    - require: [ cmd: install_postgis ]
