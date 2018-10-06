# APIs.lv namedays JSON shim

This script uses [nameday-vvc-pdf-extractor](https://github.com/aleksandrs-ledovskis/nameday-vvc-pdf-extractor) gem to prepare [APIs.lv](http://apis.lv/) compatible namedays JSON extract.
Reason - original API data source is not being updated anymore.

## Usage (A)


## Usage (B)

Prerequisite - locally downloaded VVC nameday PDF. Check [this page](http://vvc.gov.lv/index.php?route=product/category&path=193_199) for "Latviešu tradicionālo vārdadienu saraksts (PDF)".

```shell
$ gem install -g
$ VVC_PDF_FILE_PATH=/tmp/vvc.pdf ruby generate_namedays_json.rb > /tmp/output.json
```

## License

BSD-3
