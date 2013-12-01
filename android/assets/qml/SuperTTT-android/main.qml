import QtQuick 2.0
//here be main
Rectangle{
    id: pageRectangle

    height: 300                 //???
    width: 300                  //???
    color: "#e6e6e6"            //??? --- a shade of grey

    Status{id: status}          //contains the status bar and the new game button (which may be moved)

    Rectangle{                  // contains the big TTT - too lazy to remove
        id: bigGridContainer

        height: parent.height - status.statusHeight
        width: parent.width
        color:"#e6e6e6"
        anchors.top: status.bottom

        BigGrid{id: bigGrid}    //big TTT grid
    }

    Game{id: game}              //contains game/match wide variables
}



