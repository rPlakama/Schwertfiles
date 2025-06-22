import Quickshell
import "modules"
import QtQuick
import QtQuick.Layouts

Scope {
	id: root
	property real fontSize: 10
	property string fontFamily: "Oswald"
	property int fontWeight: 50
	property string mainBG: Qt.rgba(0.0, 0.0, 0.0, 0.75)
	property string secondaryBG: "dark"
	property real mainALPHA: 0.75
	property int heightMAIN: 15
	property int widthMAIN: 1500
	property int widthRightModules: 120
	property int modulesCornerMargin: 12 //the margin that sets the distance of the first right module
	property int modulesRectangleMargin: -20 // Margint to set the distance to the corner of Rectangle against the screen
	property int marginMAIN: 0
	property int radiusMain: 1
	property int radiusSecondary: 3
	property real textPadding: 20
	property string textHighlight: "white"
	PanelWindow
			{
	anchors { top:true; left: true; right: true; }
	margins { left: marginMAIN; right: marginMAIN; }
		
	implicitHeight: heightMAIN
	color: mainBG
	Rectangle {
            id: rightModules
            height: heightMAIN 
	    width: widthRightModules 
	    color: secondaryBG
	    opacity: mainALPHA
	    anchors.right: parent.right
	    anchors.rightMargin: modulesRectangleMargin
	    bottomRightRadius: radiusSecondary
	    bottomLeftRadius: radiusSecondary
	    topLeftRadius: radiusSecondary
	    topRightRadius: radiusSecondary

            RowLayout {
                anchors.fill: parent 


                Battery {
			Layout.fillWidth: true 
			Layout.leftMargin: modulesCornerMargin
                    Layout.preferredWidth: widthRightModules / 3
	    }
		    ClockWidget {
			    Layout.fillWidth: true 
                    Layout.preferredWidth: widthRightModules
                }


    }
}

}
}
