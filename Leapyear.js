function leapYear(start_year) {
  var leap_years = [];
  year = start_year;

  while (leap_years.length < 20) {
    year + 1;
    if (year % 400 == 0)
      leap_years.push(year);
    else if (year % 100 == 0)
      continue;
    else if (year % 4 == 0)
      leap_years.push(year);
  }
  return leap_years;
}


console.log(leapYear(2013))
