matrixjeu=[
    ['X','0',''],
    ['0','','0'],
    ['','X','']
]
def display_board(board):
    for row in board:
        sortie=[]
        for i in row:
            sortie.append(i)
        print(sortie)
            
display_board(matrixjeu)
