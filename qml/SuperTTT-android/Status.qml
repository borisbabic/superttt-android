import QtQuick 2.0
//status bar thingy with new game button
Rectangle{
    id: status

    property int statusHeight: 100
    property string statusText: game.playerOne+"'s Turn"

    height: status.statusHeight; width: parent.width
    anchors.top: parent.top
    color: game.playerOneColor

    Text{
        id: statusText
        text: status.statusText
        anchors {verticalCenter: parent.verticalCenter; left:parent.left; leftMargin: parent.width/14} //positioning
        font{italic: true; pixelSize: parent.height/2}
    }
    NewGame{id: newGameRect} // NewGame Button

    states: [                // Different states of the statusbar
        State{
            name: "PLAYERONE"       //player 1's move
            PropertyChanges {
                target: status
                color:game.playerOneColor
                statusText: game.playerOne+"'s Turn"
            }
        },
        State{
            name: "PLAYERTWO"       //player 2's move
            PropertyChanges {
                target: status
                color:game.playerTwoColor
                statusText: game.playerTwo+"'s Turn"
            }
        },
        State{
            name: "WINNERONE"       //player 1 won
            PropertyChanges {
                target: status
                color:game.playerOneColor
                statusText: game.playerOne+" won"
            }
        },
        State{
            name: "WINNERTWO"       //player 2 won
            PropertyChanges {
                target: status
                color:game.playerTwoColor
                statusText: game.playerTwo+" won"
            }
        },
        State{
            name:"DRAW"             //draw
            PropertyChanges {
                target: status
                color:game.drawColor
                statusText: "Draw"
            }
        }
    ]
}
