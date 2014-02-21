# Assignment3Widget.py
# (C)2013
# Scott Ernst
import nimble
from nimble import cmds
from pyglass.widgets.PyGlassWidget import PyGlassWidget
import random

#___________________________________________________________________________________________________ Assignment2Widget
class Assignment3Widget(PyGlassWidget):
    """A class for..."""

#===================================================================================================
#                                                                                       C L A S S

#___________________________________________________________________________________________________ __init__
    def __init__(self, parent, **kwargs):
        """Creates a new instance of Assignment2Widget."""
        super(Assignment3Widget, self).__init__(parent, **kwargs)
        self.homeBtn.clicked.connect(self._handleReturnHome)
        self.perturbBtn.clicked.connect(self._handlePerturbButton)
        self.defendBtn.clicked.connect(self._handelDefendButton)
        self.playBtn.clicked.connect(self._handelPlayButton)
#===================================================================================================
#                                                                                 H A N D L E R S

#___________________________________________________________________________________________________ _handleReturnHome
    def _handleReturnHome(self):
        self.mainWindow.setActiveWidget('home')

    #perturb each vertex for the selected object list
    def _handlePerturbButton(self):
        selectObjs = cmds.ls(selection = True, type='transform')
        if len(selectObjs) >= 1:
            for objName in selectObjs:
                self._perturb(objName)

    #perturb the individual object
    def _perturb(self, selectObj):
        total = cmds.polyEvaluate(v=True)
        min = float(self.minText.text())
        max = float(self.maxText.text())
        if max >= min:
            for i in range(0, total):
                x = random.uniform(min, max)
                y = random.uniform(min, max)
                z = random.uniform(min, max)
                cmds.polyMoveVertex(selectObj+'.vtx['+str(i)+']', t=[x, y, z], worldSpace=True)
        else:
            print "Please check if Max >= Min"

    #show the defend action for the monster
    def _handelDefendButton(self):
        #driven: all arms and joint; driver: the translateX of the ball
        self._rightArmDrivenKeyframe()
        #set the new values
        cmds.move( -2.5, 0, 0, 'ball', relative=True)
        cmds.rotate( '-54', '82', 0, 'SF2|RShoulderJoint|RightArm')
        cmds.rotate( '19', '147', '90', 'SF2|RShoulderJoint|RightArm|RHandJoint|RHand')
        #reset driven: all arms and joint; driver: the translateX of the ball
        self._rightArmDrivenKeyframe()

    #keyframe for the right arm defend action
    def _rightArmDrivenKeyframe(self):
        cmds.setDrivenKeyframe('SF2|RShoulderJoint|RightArm|RHandJoint|RHand.rotateX',currentDriver='ball.translateX')
        cmds.setDrivenKeyframe('SF2|RShoulderJoint|RightArm|RHandJoint|RHand.rotateY',currentDriver='ball.translateX')
        cmds.setDrivenKeyframe('SF2|RShoulderJoint|RightArm|RHandJoint|RHand.rotateZ',currentDriver='ball.translateX')
        cmds.setDrivenKeyframe('SF2|RShoulderJoint|RightArm.rotateX',currentDriver='ball.translateX')
        cmds.setDrivenKeyframe('SF2|RShoulderJoint|RightArm.rotateY',currentDriver='ball.translateX')
        cmds.setDrivenKeyframe('SF2|RShoulderJoint|RightArm.rotateZ',currentDriver='ball.translateX')

    def _handelPlayButton(self):
        #time frame
        startTime=cmds.playbackOptions(query=True, minTime=True)
        endTime=cmds.playbackOptions(query=True, maxTime=True)
        cmds.setKeyframe( 'ball', time=startTime, attribute='translateX', value=5 )
        cmds.setKeyframe( 'ball', time=endTime, attribute='translateX', value = 1.6 )
        #cmds.selectKey( objName, time=(startTime, endTime), attribute=tarAttr, keyframe=True )
        cmds.keyTangent( inTangentType='linear', outTangentType='linear')
        cmds.play(forward = True)
