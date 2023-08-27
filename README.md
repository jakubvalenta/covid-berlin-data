# Covid-19 Data in Berlin

Covid-19 data for Berlin (Germany) as a spreadsheet file (CSV format).

[covid_berlin_data_incl_hospitalized.csv](./covid_berlin_data_incl_hospitalized.csv)

Until April 4, 2023, the data include:

- total number of cases
- total number of deaths
- total number of recovered cases
- number of patients currently hospitalized with Covid-19
- number of patients currently hospitalized with Covid-19 on ICU

Since April 5, 2023, the data include:

- total number of cases
- total number of deaths

Until June 4, 2023, the data had been published by the city of Berlin every
weekday. Since then, the data has been published only once a week.

The data are updated every Tuesday around 07:40 (Berlin time).

## Preview

``` csv
date,cases,recovered,deaths,hospitalized,icu
2023-03-31,1436589,1425163,5656,777,52
2023-04-01,1436724,1425333,5662,777,52
2023-04-04,1436960,1425745,5667,777,52
2023-04-05,1437240,,5658,,
2023-04-06,1437440,,5662,,
2023-04-07,1437595,,5666,,
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
