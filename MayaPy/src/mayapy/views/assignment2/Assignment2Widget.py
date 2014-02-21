# Assignment2Widget.py
# (C)2013
# Scott Ernst
import nimble
from nimble import cmds
from pyglass.widgets.PyGlassWidget import PyGlassWidget
import random

#___________________________________________________________________________________________________ Assignment2Widget
class Assignment2Widget(PyGlassWidget):
    """A class for..."""

#===================================================================================================
#                                                                                       C L A S S

#___________________________________________________________________________________________________ __init__
    def __init__(self, parent, **kwargs):
        """Creates a new instance of Assignment2Widget."""
        super(Assignment2Widget, self).__init__(parent, **kwargs)

        self.homeBtn.clicked.connect(self._handleReturnHome)
        self.duplicateBtn.clicked.connect(self._handleDuplicateButton)
        self.setActionBtn.clicked.connect(self._handleSetActionButton)
        self.startShowBtn.clicked.connect(self._handleStartShowButton)
        self.mergeBtn.clicked.connect(self._handleMergeButton)
        #self.rdBtn.clicked.connect(self._handleRandomMoveButton)

#===================================================================================================
#                                                                                 H A N D L E R S

#___________________________________________________________________________________________________ _handleReturnHome
    def _handleReturnHome(self):
        self.mainWindow.setActiveWidget('home')


    #create copies for a group number of water molecules
    def _handleDuplicateButton(self):
        self._duplicate()

    def _handleMergeButton(self):
        self._merge()

    def _handleSetActionButton(self):
        #time frame
        startTime=cmds.playbackOptions(query=True, minTime=True)
        endTime=cmds.playbackOptions(query=True, maxTime=True)

        for i in range(0, 100 ):
            objName='H2O' + str(i+1);
            if i % 3 == 0:
                self._keyRot(objName, startTime, endTime, 'rotateX')
            elif i % 3 == 1:
                self._keyRot(objName, startTime, endTime, 'rotateY')
            else:
                self._keyRot(objName, startTime, endTime, 'rotateZ')



    def _handleStartShowButton(self):
        cmds.playblast( f="myMovie.mv", viewer=True)
        cmds.play(forward = True)



    # Actions in Maya___________________________________________________________________________________________

    #GET THE DUPLICATE AMOUNT ( 1 - 100 )
    def _duplicate(self):
        #set the random seed
        random.seed(1024)

        for i in range (0, 100):
            cmds.duplicate('H2O')
            #let the instances rotate
            objName='H2O' + str(i+1)
            #random place
            x = random.uniform(-30,30)
            y = random.uniform(0, 40)
            z = random.uniform(-30, 30)
            cmds.move(x, y, z, objName)
            #random rotate
            xRot=random.uniform(0, 360)
            yRot=random.uniform(0, 360)
            zRot=random.uniform(0, 360)
            cmds.rotate(xRot, yRot, zRot, objName)

    def _merge(self):
        startTime=cmds.playbackOptions(query=True, minTime=True)
        endTime=cmds.playbackOptions(query=True, maxTime=True)
        for i in range(0, 100):
            objName='H2O' + str(i+1)
            self._keyTrans(objName, startTime, endTime, 'translateX', 3)
            self._keyTrans(objName, startTime, endTime, 'translateY', 3)
            self._keyTrans(objName, startTime, endTime, 'translateZ', 3)

    # function: rotate the object or a group for animation
    def _keyRot(self, objName, startTime, endTime, tarAttr):
        #cmds.cutKey(objName, time=(startTime, endTime), attribute= tarAttr)
        cmds.setKeyframe(objName, time=startTime, attribute=tarAttr, value=0)
        cmds.setKeyframe(objName, time=endTime, attribute=tarAttr, value=360)
        #cmds.selectKey(objName, time=(startTime, endTime), attribute=tarAttr, keyframe=True)
        cmds.keyTangent(inTangentType='linear', outTangentType='linear')

    #function: rotate the object or a group for animation
    def _keyTrans(self, objName, startTime, endTime, tarAttr, desti):
        #cmds.cutKey( objName, time=(startTime, endTime), attribute= tarAttr )
        cmds.setKeyframe( objName, time=startTime, attribute=tarAttr, value=0 )
        cmds.setKeyframe( objName, time=endTime, attribute=tarAttr, value = desti )
        #cmds.selectKey( objName, time=(startTime, endTime), attribute=tarAttr, keyframe=True )
        cmds.keyTangent( inTangentType='linear', outTangentType='linear')