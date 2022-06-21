RVA-Data
===

Static configuration data for [RVA](https://revolt-america.com/).

`models/` Contains all data stored in a `.csv` format. Modifying these files will reflect across all RVA's infrastructure.

## Usage
For developers, the packaging pipeline was built using Rake. The following tasks take care of profiling and versioning
the files included in models.
  - `:profile`: Profiles the data into `yml` and `yaml` format. If run locally, it should create directories with
   extension-matching names at the project root.
  - `:version`: Generates an `rva_points_data.json` file, which is later used by [RVA-Points](https://github.com/Re-Volt-America/RVA-Points)
  to detect car data updates.
