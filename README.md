RVA-Data
===

Static configuration data for [RVA](https://rva.lat/).

`models/` Contains data stored in `.csv` files. Modifying these files will reflect across all RVA's infrastructure.

## Usage
For developers, the packaging pipeline was built using [Rake](https://ruby.github.io/rake/). The following tasks take
care of profiling and versioning the files included in models.

- `:profile`: Profiles the data into `yml` format. This task will create a directory named `yml/` and output all the
  profiled files into it.
- `:version`: Generates an `rva_points_data.json` file, which is later used by [RVA-Points](https://github.com/Re-Volt-America/RVA-Points)
  to detect car & track data updates.
