function genClabe(clabe) {
  let cuenta = clabe; // "01218001524892235";
  let ponderacion = [3, 7, 1, 3, 7, 1, 3, 7, 1, 3, 7, 1, 3, 7, 1, 3, 7];
  let multiplicacion = [];
  let modulo = [];
  let digito_verificador;
  let suma = 0;
  for (let i = 0; i < cuenta.length; i++) {
    multiplicacion.push(cuenta[i] * ponderacion[i])
  }

  for (let i = 0; i < multiplicacion.length; i++) {
    modulo.push(multiplicacion[i] % 10)
  }

  for (let i = 0; i < modulo.length; i++) {
    suma += modulo[i]
  }
  
  digito_verificador = (10 - suma % 10) % 10;

  return digito_verificador
}