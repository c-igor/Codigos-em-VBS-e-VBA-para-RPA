input = WScript.Arguments.Item(0)

var dict = {
  "Janeiro": "01",
  "Fevereiro": "02",
  "Mar�o": "03",
  "Abril": "04",
  "Maio": "05",
  "Junho": "06",
  "Julho": "07",
  "Agosto": "08",
  "Setembro": "09",
  "Outubro": "10",
  "Novembro": "11",
  "Dezembro": "12"
};

WScript.StdOut.WriteLine(dict[input])