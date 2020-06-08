# Covid-19 Data in Berlin

Data on the number of coronavirus cases, recovered cases and deaths in Berlin,
Germany. Updated daily.

[covid_berlin_data.csv](./covid_berlin_data.csv)

## Preview

``` csv
date,cases,recovered,deaths
2020-06-04,6945,6412,200
2020-06-05,6963,6443,201
2020-06-06,6996,6455,205
```

## Chart

https://datawrapper.dwcdn.net/CqRim/3/

## Source

The data come from the official press releases of the city of Berlin:
[Pressemitteilungen der Senatsverwaltung für Gesundheit, Pflege und
Gleichstellung](https://www.berlin.de/sen/gpg/service/presse/2020/).

The website of the city of Berlin is checked for a new press release every 30
minutes using
[covid-berlin-scraper](https://www.github.com/jakubvalenta/covid-berlin-scraper).

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
