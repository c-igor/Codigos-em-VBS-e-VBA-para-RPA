input = WScript.Arguments.Item(0)

var dict = {
  "01": "Janeiro",
  "02": "Fevereiro",
  "03": "Mar�o",
  "04": "Abril",
  "05": "Maio",
  "06": "Junho",
  "07": "Julho",
  "08": "Agosto",
  "09": "Setembro",
  "10": "Outubro",
  "11": "Novembro",
  "12": "Dezembro"
};


WScript.StdOut.WriteLine(dict[input])