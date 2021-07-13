# 00218003224094670

=begin
require '/Users/aceptado/Documents/aceptado.com/stptest/clabes'
=end
class Clabe
  def initialize(clabe)

    # @cuenta = "00218003224094670" # Funcionó Expected 0, got 0 (Test)
    # @cuenta = "01416860592229517" # Funcionó Expected 4, got 4 (Santander)
    # @cuenta = "64618019214024467" # Funcionó Expected 5, got 5 (Klar)
    # @cuenta = "01218001524892235" # Funcionó Expected 1, got 1 (BBVA)
    # @cuenta = "15618000004141701" # Funcionó Expected 5, got 5 (Falabella)
    # @cuenta = "64618017375720365" # Funcionó Expected 9, got 9 (Vexi)

    @cuenta = clabe
    ponderacion = [3, 7, 1, 3, 7, 1, 3, 7, 1, 3, 7, 1, 3, 7, 1, 3, 7]
    @multiplicacion = []
    @modulo = []
    @suma = 0
    @digito_verificador

    @cuenta.chats.each_with_index do |value, index|
      @multiplicacion << value.to_i * ponderacion[index]
    end

    @multiplicacion.each do |value|
      @modulo << value % 10
    end

    @multiplicacion.each do |value| @modulo << value % 10 end

    @modulo.each do |value| @suma += value end

    @digito_verificador = (10 - (@suma % 10)) % 10

    return @digito_verificador
  end
end
