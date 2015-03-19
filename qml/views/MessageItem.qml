/*
  Copyright (C) 2015 Petr Vytovtov
  Contact: Petr Vytovtov <osanwe@protonmail.ch>
  All rights reserved.

  This file is part of Kat.

  Kat is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  Kat is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with Foobar.  If not, see <http://www.gnu.org/licenses/>.
*/

import QtQuick 2.0
import Sailfish.Silica 1.0

BackgroundItem{
    height: messageText.height + Theme.paddingMedium
    anchors.left: parent.left
    anchors.right: parent.right
    highlighted: io === 0 & readState === 0

    Label {
        id: messageText
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: io === 1 ? Theme.paddingLarge * 3 : Theme.paddingLarge
        anchors.rightMargin: io === 1 ? Theme.paddingLarge : Theme.paddingLarge * 3
        horizontalAlignment: io === 1 ? Text.AlignRight : Text.AlignLeft
        text: message
        textFormat: Text.StyledText
        linkColor: readState === 1 ? Theme.secondaryColor : Theme.secondaryHighlightColor
        color: readState === 1 ? Theme.primaryColor : Theme.highlightColor
        wrapMode: Text.Wrap

        onLinkActivated: Qt.openUrlExternally(link)
    }
}
