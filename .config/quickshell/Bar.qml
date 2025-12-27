import Quickshell
import Quickshell.Io
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

Variants {
	model: Quickshell.screens;

	delegate: Component {	
		PanelWindow {
			
			required property var modelData
			screen: modelData
	id: root
	anchors.left: true
        anchors.right: true
	anchors.top: true	
	implicitHeight: 30
	color: "#1a120d"
	Text {
		id: clock
		anchors.centerIn: parent
		color: "#e6beaa"
		font.pointSize: 11
		font.bold: true
		Process {
			id: dateProc
			command: ["date"]
			running: true
			stdout: StdioCollector {
				onStreamFinished: clock.text = this.text
			}	
		}

		Timer { 
			interval: 1000
			running: true
			repeat: true
			onTriggered: dateProc.running = true
		}
	}
}
}
}

