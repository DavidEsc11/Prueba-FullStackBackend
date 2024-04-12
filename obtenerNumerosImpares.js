function obtenerNumerosImpares(numero) {
    
    let impares = [];
  
 
    for (let i = 1; i <= numero; i++) {
      // Verificamos si el número actual es impar
      if (i % 2 !== 0) {
       
        impares.push(i);
      }
    }
  
    
    return impares;
  }
  
  // Ejemplo de uso
  const numeroDigitado = 9;
  const numerosImpares = obtenerNumerosImpares(numeroDigitado);
  console.log(numerosImpares);
  