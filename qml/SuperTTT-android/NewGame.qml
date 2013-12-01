import QtQuick 2.0
//New game button
Rectangle{
    id:newGameRect

    height: parent.height*5/7; width:parent.width*2/7; radius:parent.width/28
    anchors{right:parent.right; rightMargin:parent.width/14; verticalCenter: parent.verticalCenter} //positioning
    color:"#e6e6e6"

    Text{
        id:newGameText
        text: "New Game"
        anchors.centerIn: parent
        font.pixelSize: parent.height/2
    }
    MouseArea{
        id:newGameMouseArea
        anchors.fill:parent
        onClicked: bigGrid.reset()  //resets the game
    }
}
