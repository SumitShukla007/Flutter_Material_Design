class Country {
  String name;
  String flag;
  String capital;
  String currency;
  bool selected;

  Country({this.name, this.flag, this.capital, this.currency, this.selected});

  static List<Country> getCountries() {
    return <Country>[
      Country(
        name: "India",
        flag: "images/ic_flag_india.png",
        capital: "New Delhi",
        currency: "INR",
        selected: false,
      ),
      Country(
        name: "Bangladesh",
        flag: "images/ic_flag_bangladesh.png",
        capital: "Dhaka",
        currency: "BDT",
        selected: false,
      ),
      Country(
        name: "USA",
        flag: "images/ic_flag_usa.png",
        capital: "USA",
        currency: "USD",
        selected: false,
      ),
      Country(
        name: "Jamaica",
        flag: "images/ic_flag_jamaica.png",
        capital: "Kingston",
        currency: "JMD",
        selected: false,
      ),
      Country(
        name: "China",
        flag: "images/ic_flag_china.png",
        capital: "Beijing",
        currency: "CNY",
        selected: false,
      ),
      Country(
        name: "Norway",
        flag: "images/ic_flag_norway.png",
        capital: "Norway",
        currency: "Oslo",
        selected: false,
      ),
      Country(
        name: "France",
        flag: "images/ic_flag_france.png",
        capital: "Paris",
        currency: "EUR",
        selected: false,
      ),
      Country(
        name: "Thailand",
        flag: "images/ic_flag_thailand.png",
        capital: "Bangkok",
        currency: "THB",
        selected: false,
      ),
      Country(
        name: "Mauritius",
        flag: "images/ic_flag_mauritius.png",
        capital: "Port Louis",
        currency: "MUR",
        selected: false,
      ),
      Country(
        name: "Saudi Arabia",
        flag: "images/ic_flag_saudi_arabia.png",
        capital: "Riyadh",
        currency: "SAR",
        selected: false,
      ),
      Country(
        name: "Canada",
        flag: "images/ic_flag_canada.png",
        capital: "Ottawa",
        currency: "CNY",
        selected: false,
      ),
    ];
  }

  @override
  String toString() {
    return "Country("
        "$name "
        "$capital "
        "$currency "
        "$flag "
        "$selected"
        ")";
  }
}
