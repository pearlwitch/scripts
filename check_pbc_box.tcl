pbc box
    ```
    Se a simulação não tiver as informações de PBC salvas na trajetória e você precisar medir os limites físicos da caixa com base nos átomos de água:
    ```tcl
    set sel [atomselect top all]
    measure minmax $sel
    ```

# Isso retornará dois conjuntos de coordenadas (mínimas e máximas de X, Y e Z). 
# A diferença entre o valor máximo e o mínimo em cada eixo será o tamanho da sua caixa em Å.*
