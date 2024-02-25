# APIs.lv namedays JSON shim

This script uses official VVC [list](https://www.vvc.gov.lv/lv/media/157/download?attachment) to prepare [APIs.lv](http://apis.lv/namedays/info) compatible namedays JSON extract.
Reason - ~~original API data source is not being updated anymore~~ new API key creation is not possible.

## Usage (A)

Go to [Releases](https://github.com/aleksandrs-ledovskis/nameday-apis.lv-json-shim/releases) page and pick link of latest "namedays.json".

Then use in place of `http://apis.lv/namedays.json` API call.

## Usage (B)

Prerequisite - locally downloaded VVC nameday CSV. Check [this page](https://www.vvc.gov.lv/lv/kalendarvardu-ekspertu-komisija) for "Latviešu tradicionālo vārdadienu saraksts (CSV)".

```shell
$ gem install -g
$ VVC_CSV_FILE_PATH=/tmp/vvc.csv ruby generate_namedays_json.rb > /tmp/output.json
```

## License

BSD-3
