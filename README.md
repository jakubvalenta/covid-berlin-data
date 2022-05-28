# Covid-19 Data in Berlin

Covid-19 data for Berlin (Germany) as a spreadsheet file (CSV format). The file
contains the following data recorded every day since the first infection:

- total number of cases
- total number of recovered cases
- total number of deaths
- number of patients currently hospitalized with Covid-19
- number of patients currently hospitalized with Covid-19 on ICU

The data are updated daily around 07:40 (Berlin time).

[covid_berlin_data_incl_hospitalized.csv](./covid_berlin_data_incl_hospitalized.csv)

## Preview

``` csv
date,cases,recovered,deaths,hospitalized,icu
2020-06-10,7135,6559,208,127,41
2020-06-11,7164,6582,208,124,42
2020-06-12,7251,6609,208,126,42
```

## Chart

https://datawrapper.dwcdn.net/CqRim/7/

## Source

Until August 30, 2020, the data come from the official press releases of the
city of Berlin: [Pressemitteilungen der Senatsverwaltung für Gesundheit, Pflege
und Gleichstellung](https://www.berlin.de/sen/gpg/service/presse/2020/).

From August 31, 2020 to September 8, 2020, the data come from the table
[COVID-19 in Berlin, Verteilung in den
Bezirken](https://www.berlin.de/lageso/gesundheit/infektionsepidemiologie-infektionsschutz/corona/tabelle-bezirke/). These
data are missing the number of hospitalized and ICU patients.

Since September 9, 2020, the data come from the dashboard [COVID-19 in
Berlin](https://www.berlin.de/corona/lagebericht/desktop/corona.html).

The sources are checked for new data every 30 minutes using
[covid-berlin-scraper](https://www.github.com/jakubvalenta/covid-berlin-scraper).
Currently, updates arrive usually around 07:40 (Berlin time).

## Date

The date on each row of the data file is the date of the press release, unless
the press release was released before 12:00 (Berlin time), in which case the
date of the previous day is used. When several press releases were released on a
day, only the latest one is used.

## License

<a href="http://creativecommons.org/publicdomain/zero/1.0/"><img
src="http://i.creativecommons.org/p/zero/1.0/88x31.png" alt="CC0"></a>

To the extent possible under law, the person who associated CC0 with this work
has waived all copyright and related or neighboring rights to this work. This
work is published from: Germany.
