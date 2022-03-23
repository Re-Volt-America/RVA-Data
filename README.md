RVA-Data
===

Static configuration data for [RVA](https://revolt-america.com/).

`models/` Contains all car data stored in a `.csv` format. These are the files to be modified so that they can eventually be profiled via rake and deployed by capistrano.

## Usage
For developers, the packaging pipeline was built using Rake. The following tasks take care of profiling and versioning
the files included in models.
  - `:profile`: Profiles the data into `yml` and `yaml` format. If run locally, it should create directories with
   extension-matching names at the project root.
  - `:version`: Generates an `rva_points_data.json` file, which is later used by [RVA-Points](https://github.com/Re-Volt-America/RVA-Points)
  to detect car data updates.
