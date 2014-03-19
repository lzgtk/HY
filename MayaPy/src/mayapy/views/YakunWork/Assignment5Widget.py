import nimble
from nimble import cmds
from pyglass.widgets.PyGlassWidget import PyGlassWidget
import random

#___________________________________________________________________________________________________ Assignment5Widget
class Assignment5Widget(PyGlassWidget):
    """A class for..."""
#===================================================================================================
#                                                                                       C L A S S
#___________________________________________________________________________________________________ __init__
    def __init__(self, parent, **kwargs):
        """Creates a new instance of Assignment2Widget."""
        super(Assignment5Widget, self).__init__(parent, **kwargs)
        self.homeBtn.clicked.connect(self._handleReturnHome)
        self.duplicatedBtn.clicked.connect(self._handleDuplicatedButton)
        self.aimedBtn.clicked.connect(self._handleAimedButton)
        self.playBtn.clicked.connect(self._handelPlayButton)
        self.rotate.clicked.connect(self._handleRotateButton)
        self.roadBtn.clicked.connect(self._handleRoadButton)
#==================================================================================================
#                                                                                 H A N D L E R S
#___________________________________________________________________________________________________ _handleReturnHome
    def _handleReturnHome(self):
        self.mainWindow.setActiveWidget('home')

    #duplicate objects of the selected object
    def _handleDuplicatedButton(self):
        random.seed(1234)
        exist = cmds.ls('dust')
        if(len(exist) != 0):
            cmds.delete('dust')
        dust=cmds.group(empty=True, name='dust')
        transformName = cmds.ls('pie', typ='transform')[0]
        num = int(self.dustNum.text())
        for i in range(0, num):
            instanceResult = cmds.instance(transformName, name=transformName + '_instance#')
            #print 'instanceResult: ' + str(instanceResult)
            x = random.uniform(-3, 34)
            y = random.uniform(0,4)
            z = random.uniform(-3,3)
            cmds.move(x, y, z, instanceResult)
            xRot = random.uniform(0,360)
            yRot = random.uniform(0,360)
            zRot = random.uniform(0,360)
            cmds.rotate(xRot, yRot, zRot, instanceResult)
            cmds.parent(instanceResult, dust)

    def _handleAimedButton(self):
        targetName = cmds.ls('ball')[0]
        dust = cmds.ls("pie_instance*")
        if(targetName != None and dust != None):
            for objectName in dust:
                cmds.aimConstraint(targetName, objectName, aimVector = [0,1,0], name='pie_aimConstraint#')

    def _handleRotateButton(self):
        dust = cmds.ls("pie_instance*")
        startTime=cmds.playbackOptions(query=True, minTime=True)
        endTime=cmds.playbackOptions(query=True, maxTime=True)
        for obj in dust:
            self._keyRot(obj, startTime, endTime, 'rotateX')


    def _keyRot(self, objName, startTime, endTime, tarAttr):
        #cmds.cutKey(objName, time=(startTime, endTime), attribute= tarAttr)
        cmds.setKeyframe(objName, time=startTime, attribute=tarAttr, value=0)
        cmds.setKeyframe(objName, time=endTime, attribute=tarAttr, value=360)
        #cmds.selectKey(objName, time=(startTime, endTime), attribute=tarAttr, keyframe=True)
        cmds.keyTangent(inTangentType='linear', outTangentType='linear')

    def _handelPlayButton(self):
        cmds.play(forward = True)

    #create the road with golden bricks
    def _handleRoadButton(self):
        exist = cmds.ls('road')
        if(len(exist) != 0):
            cmds.delete('road')
        road=cmds.group(empty=True, name='road')
        transformName = cmds.ls('brick', typ='transform')[0]
        num = int(self.bricksNum.text())
        for i in range(0, num):
            instanceResult = cmds.instance(transformName, name=transformName + '_instance#')
            #print 'instanceResult: ' + str(instanceResult)
            x = random.uniform(-3, 34)
            z = random.uniform(-3,3)
            cmds.move(x, 0, z, instanceResult)
            yRot = random.uniform(0,360)
            cmds.rotate(0, yRot, 0, instanceResult)
            cmds.parent(instanceResult, road)



