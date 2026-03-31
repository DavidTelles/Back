function somar(){

    num = parseInt (document.getElementById('1').value)
    num1 = parseInt (document.getElementById('2').value)
    document.getElementById('resultado').innerText = num + num1

}
function subtrair(){

    num3 = parseInt (document.getElementById('3').value)
    num4 = parseInt (document.getElementById('4').value)
    document.getElementById('resultado2').innerText = num3 - num4

}
function multiplicar(){

    num5 = parseInt (document.getElementById('5').value)
    num6 = parseInt (document.getElementById('6').value)
    document.getElementById('resultado3').innerText = num5 * num6

}
function areaTriangulo(){

    num7 = parseInt (document.getElementById('7').value)
    num8 = parseInt (document.getElementById('8').value)
    document.getElementById('resultado4').innerText = num7 * num8 / 2

}
function areaQuadrado(){

    num9 = parseInt (document.getElementById('9').value)
    document.getElementById('resultado5').innerText = num9 * num9

}
function areaRetangulo(){

    num10 = parseInt (document.getElementById('10').value)
    num11 = parseInt (document.getElementById('11').value)
    document.getElementById('resultado6').innerText = num10 * num11

}
function areaTrapezio(){    

    num12 = parseInt (document.getElementById('12').value)
    num13 = parseInt (document.getElementById('13').value)
    num14 = parseInt (document.getElementById('14').value)
    document.getElementById('resultado7').innerText = (num12 + num13) * num14 / 2

}
function areaLosango(){

    num15 = parseInt (document.getElementById('15').value)
    document.getElementById('resultado8').innerText = (num15 * num15)

}
function areaCirculo(){

    num17 = parseInt (document.getElementById('17').value)
    document.getElementById('resultado9').innerText = (3.14)*(num17*num17)

}

function areaSetorCircular(){

    num18 = parseInt(document.getElementById('18').value)
    num19 = parseInt(document.getElementById('19').value)
    document.getElementById('resultado10').innerText = (num18 * 360) * 3.14 * (num19 * num19)

}

function areaCoroaCircular(){

    num20 = parseInt(document.getElementById('20').value)
    num21 = parseInt(document.getElementById('21').value)
    document.getElementById('resultado11').innerText = 3.14 * (num20 * num20) - (num21 * num21)

}

function areaElipse(){

    num22 = parseInt(document.getElementById('22').value)
    num23 = parseInt(document.getElementById('23').value)
    document.getElementById('resultado12').innerText = 3.14 * num22 * num23

}

function areaParalelogramo(){

    num24 = parseInt(document.getElementById('24').value)
    num25 = parseInt(document.getElementById('25').value)
    document.getElementById('resultado13').innerText = num24 * num25

}

function areaPoligono(){

    num26 = parseInt(document.getElementById('26').value)
    num27 = parseInt(document.getElementById('27').value)
    document.getElementById('resultado14').innerText = num26 * num27

}