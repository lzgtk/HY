# Assignment3Widget.py
# (C)2013
# Scott Ernst
import nimble
from nimble import cmds
from pyglass.widgets.PyGlassWidget import PyGlassWidget
import random
import time

#___________________________________________________________________________________________________ Assignment2Widget
class Assignment4Widget(PyGlassWidget):
    """A class for..."""

#===================================================================================================
#                                                                                       C L A S S

#___________________________________________________________________________________________________ __init__
    def __init__(self, parent, **kwargs):
        """Creates a new instance of Assignment2Widget."""
        super(Assignment4Widget, self).__init__(parent, **kwargs)
        self.homeBtn.clicked.connect(self._handleReturnHome)
        self.loadSoundBtn.clicked.connect(self._handleLoadSoundButton)
        self.setBallBtn.clicked.connect(self._handleSetBallButton)
        self.ballBtn.clicked.connect(self._handleBallButton)
        self.playBtn.clicked.connect(self._handlePlayButton)
        self.restoreBtn.clicked.connect(self._handleRestoreButton)
        #for all the button to set all the view keyframes
        self.scene1Btn.clicked.connect(self._handleScene1Button)
        self.scene2Btn.clicked.connect(self._handleScene2Button)
        self.scene3Btn.clicked.connect(self._handleScene3Button)
        self.scene4Btn.clicked.connect(self._handleScene4Button)
        self.scene5Btn.clicked.connect(self._handleScene5Button)
        #for all the button to set different views
        self.cn1Btn.clicked.connect(self._handleCn1Button)
        self.cn2Btn.clicked.connect(self._handleCn2Button)
        self.cn3Btn.clicked.connect(self._handleCn3Button)
        self.cn4Btn.clicked.connect(self._handleCn4Button)
        self.cn5Btn.clicked.connect(self._handleCn5Button)

#===================================================================================================
#                                                                                 H A N D L E R S

#___________________________________________________________________________________________________ _handleReturnHome
    def _handleReturnHome(self):
        self.mainWindow.setActiveWidget('home')

#___________________________________________________________________________________________________ _handleLoadSoundButton
#   Load the sound track into the scene at time 0
    def _handleLoadSoundButton(self):
        cmds.sound(offset=0, file="AttackMebyBall.aiff", name="attack")
        cmds.soundControl( 'soundScrubber', sound='attack', displaySound=True, waveform='both' )
        '''cmds.window()
        cmds.frameLayout( lv=False )
        cmds.soundControl( 'soundShow', 500, height=45, sound='attack', displaySound=True, waveform='both' )
        cmds.showWindow()'''
        # cmds.sound( file='AttackMeByBall.aiff', name='attack' )
        # Create a sound control (named "soundScrubber")
        # and have it display the sound associated with audio node "ohNo".
        #
        '''cmds.window()
        cmds.frameLayout( lv=False )
        cmds.soundControl( 'soundShow', 500, height=45, sound='attack', displaySound=True, waveform='both' )
        cmds.showWindow()
        #set mouse drag
        pressCmd = "soundControl -e -beginScrub soundScrubber"
        releaseCmd = "soundControl -e -endScrub soundScrubber"
        cmds.soundControl( 'soundShow', e=True, pc=cmds.soundControl('soundScrubber',e=True,beginScrub=True, rc=cmds.sound('soundScrubber',e=True,endScrub=True)))
        '''
#___________________________________________________________________________________________________ _handleScene1Button
    #set the movie to track the monster H
    def _handleScene1Button(self):
        self._helpScene1('scene1')
        #make the camera float randomly
        endTime= cmds.playbackOptions(query=True, maxTime=True)
        timeOffset = (endTime - (-30))//7
        currentTime = -30
        tx = 11.595
        ty = 2.125
        tz = -1.627
        rx = -38.988
        ry = 94.883
        rz = -38.782
        i=0
        for i in range(0, 7):
            #get the new key time
            currentTime = currentTime + timeOffset
            #random rotate + random move
            rR = random.uniform(-10, 10)
            rM = random.uniform(-0.5,0.5)
            self._keySingleAttr('scene1', currentTime, 'translateX', tx + rM)
            self._keySingleAttr('scene1', currentTime, 'translateY', ty + rM)
            self._keySingleAttr('scene1', currentTime, 'translateZ', tz + rM)
            self._keySingleAttr('scene1', currentTime, 'rotateX', rx + rR)
            self._keySingleAttr('scene1', currentTime, 'rotateY', ry + rR)
            self._keySingleAttr('scene1', currentTime, 'rotateZ', rz + rR)
        #after set the scene then enable the button
        self.cn1Btn.setEnabled(True)

    def _helpScene1(self, objName):
        #show the view
        self._keyObject(objName, -100, -70, 'translateX', 14, 14)
        self._keyObject(objName, -100, -70, 'translateY', 5.5, 5.5)
        self._keyObject(objName, -100, -70, 'translateZ', 17.2, 17.2)
        self._keyObject(objName, -100, -70, 'rotateX', -6.42, -6.42)
        self._keyObject(objName, -100, -70, 'rotateY', 38.498, 38.498)
        self._keyObject(objName, -100, -70, 'rotateZ', -4.7, -4.7)

        #look more detail
        self._keySingleAttr(objName, -40, 'translateX', 7.2)
        self._keySingleAttr(objName, -40, 'translateY', 3.48)
        self._keySingleAttr(objName, -40, 'translateZ', 5.91)
        self._keySingleAttr(objName, -40, 'rotateX', -6.42)
        self._keySingleAttr(objName, -40, 'rotateY', 38.498)
        self._keySingleAttr(objName, -40, 'rotateZ', -4.706)

        self._keySingleAttr(objName, -30, 'translateX', 11.595)
        self._keySingleAttr(objName, -30, 'translateY', 2.125)
        self._keySingleAttr(objName, -30, 'translateZ', -1.627)
        self._keySingleAttr(objName, -30, 'rotateX', -38.988)
        self._keySingleAttr(objName, -30, 'rotateY', 95.883)
        self._keySingleAttr(objName, -30, 'rotateZ', -38.782)
#___________________________________________________________________________________________________ _handleScene1Button

    #provide the view of the Y
    def _handleScene2Button(self):
        #show the view
        self._keyObject('scene2', -100, -70, 'translateX', 23.999, 35.094)
        self._keyObject('scene2', -100, -70, 'translateY', 6.42, 5.82)
        self._keyObject('scene2', -100, -70, 'translateZ', 10.714, 10.026)
        self._keyObject('scene2', -100, -70, 'rotateX', -12.338, -12.338)
        self._keyObject('scene2', -100, -70, 'rotateY', -37, 30.6)
        self._keyObject('scene2', -100, -70, 'rotateZ', 0, 0)
        #give more details about the Y character
        self._keySingleAttr('scene2', -40, 'translateX', 40.515)
        self._keySingleAttr('scene2', -40, 'translateY', 5.257)
        self._keySingleAttr('scene2', -40, 'translateZ', -0.283)
        self._keySingleAttr('scene2', -40, 'rotateX', -15.938)
        self._keySingleAttr('scene2', -40, 'rotateY', 90.2)
        self._keySingleAttr('scene2', -40, 'rotateZ', 0)
        #give the view for throw the ball
        self._keySingleAttr('scene2', -30, 'translateX', 30.439)
        self._keySingleAttr('scene2', -30, 'translateY', 7.061)
        self._keySingleAttr('scene2', -30, 'translateZ', -13.223)
        self._keySingleAttr('scene2', -30, 'rotateX', -20.138)
        self._keySingleAttr('scene2', -30, 'rotateY', 179)
        self._keySingleAttr('scene2', -30, 'rotateZ', 0)

        #give the face
        self._keySingleAttr('scene2', 10, 'translateX', 25.00)
        self._keySingleAttr('scene2', 10, 'translateY', 1.944)
        self._keySingleAttr('scene2', 10, 'translateZ', -0.199)
        self._keySingleAttr('scene2', 10, 'rotateX', 0)
        self._keySingleAttr('scene2', 10, 'rotateY', 270)
        self._keySingleAttr('scene2', 10, 'rotateZ', 0)

        #make the camera float randomly
        endTime= cmds.playbackOptions(query=True, maxTime=True)
        timeOffset = (100 - (10))//15
        currentTime = 10
        tx = 19.701
        #flash effect
        for i in range(0, 15):
            #get the new key time
            currentTime = currentTime + timeOffset
            #random rotate + random move
            if i % 2 == 0:
                self._keySingleAttr('scene2', currentTime, 'translateX', tx + 3)
            else:
                self._keySingleAttr('scene2', currentTime, 'translateX', tx - 3)

        #after set the scene then enable the button

        self._keySingleAttr('scene2', endTime, 'translateX', 25.00)
        self._keySingleAttr('scene2', endTime, 'translateY', 1.944)
        self._keySingleAttr('scene2', endTime, 'translateZ', -0.199)
        self._keySingleAttr('scene2', endTime, 'rotateX', 0)
        self._keySingleAttr('scene2', endTime, 'rotateY', 270)
        self._keySingleAttr('scene2', endTime, 'rotateZ', 0)
        self.cn2Btn.setEnabled(True)

    def _handleScene3Button(self):
        #set the ball from z view to x view
        self._keyObject('scene3', -100, 60, 'translateX', 29, 29)
        self._keyObject('scene3', -100, 60, 'translateY', 3, 3)
        self._keyObject('scene3', -100, 60, 'translateZ', 10.11, 10.11)
        self._keyObject('scene3', -100, 60, 'rotateX', 0, 0)
        self._keyObject('scene3', -100, 60, 'rotateY', 0, 0)
        self._keyObject('scene3', -100, 60, 'rotateZ', 0, 0)

        self._keySingleAttr('scene3', 80, 'translateX', 39.84)
        self._keySingleAttr('scene3', 80, 'translateY', 4.2)
        self._keySingleAttr('scene3', 80, 'translateZ', -0.2)
        self._keySingleAttr('scene3', 80, 'rotateX', 0)
        self._keySingleAttr('scene3', 80, 'rotateY', 90)
        self._keySingleAttr('scene3', 80, 'rotateZ', 0)

        self._keySingleAttr('scene3', 135, 'translateX', 5)
        self._keySingleAttr('scene3', 135, 'translateY', 1.9)
        self._keySingleAttr('scene3', 135, 'translateZ', -0.2)
        self._keySingleAttr('scene3', 135, 'rotateX', 0)
        self._keySingleAttr('scene3', 135, 'rotateY', 90)
        self._keySingleAttr('scene3', 135, 'rotateZ', 0)

        self._keySingleAttr('scene3', 140, 'translateX', 2.539)
        self._keySingleAttr('scene3', 140, 'translateY', 1.372)
        self._keySingleAttr('scene3', 140, 'translateZ', 3.569)
        self._keySingleAttr('scene3', 140, 'rotateX', -2.4)
        self._keySingleAttr('scene3', 140, 'rotateY', -4)
        self._keySingleAttr('scene3', 140, 'rotateZ', 0)
        #set the keyframe from 140 to the end
        endTime= cmds.playbackOptions(query=True, maxTime=True)
        self._keySingleAttr('scene3', 200, 'translateX', 17)
        self._keySingleAttr('scene3', 270, 'translateX', 25)
        self._keySingleAttr('scene3', endTime, 'translateX', 30)
        #after set the scene then enable the button
        self.cn3Btn.setEnabled(True)

    def _handleScene4Button(self):
        startTime = cmds.playbackOptions(query=True, minTime=True)
        endTime= cmds.playbackOptions(query=True, maxTime=True)
        #rotate the whole battle for 360
        i = (endTime - startTime)/4
        self._keyObject('scene4', startTime , startTime + i, 'translateX', -58, 15)
        self._keyObject('scene4', startTime , startTime + i, 'translateZ', 0, 71)
        self._keyObject('scene4', startTime , startTime + i, 'rotateY', -90, 0)

        self._keySingleAttr('scene4', startTime + 2 * i, 'translateX', 95)
        self._keySingleAttr('scene4', startTime + 2 * i, 'translateZ', 0)
        self._keySingleAttr('scene4', startTime + 2 * i, 'rotateY', 90)

        self._keySingleAttr('scene4', startTime + 3 * i, 'translateX', 15)
        self._keySingleAttr('scene4', startTime + 3 * i, 'translateZ', -90)
        self._keySingleAttr('scene4', startTime + 3 * i, 'rotateY', 180)

        self._keySingleAttr('scene4', startTime + 4 * i, 'translateX', -58)
        self._keySingleAttr('scene4', startTime + 4 * i, 'translateZ', 15)
        self._keySingleAttr('scene4', startTime + 4 * i, 'rotateY', 270)

        self.cn4Btn.setEnabled(True)

    #movie button
    def _handleScene5Button(self):
        #from -100 to 40
        self._helpScene1('movieshow')
        self._keySingleAttr('movieshow', 39, 'translateX', 11.595)
        self._keySingleAttr('movieshow', 39, 'translateY', 2.125)
        self._keySingleAttr('movieshow', 39, 'translateZ', -1.627)
        self._keySingleAttr('movieshow', 39, 'rotateX', -38.988)
        self._keySingleAttr('movieshow', 39, 'rotateY', 95.883)
        self._keySingleAttr('movieshow', 39, 'rotateZ', -38.782)
        #make the camera float randomly
        #give the face of Y
        self._keySingleAttr('movieshow', 40, 'translateX', 14.00)
        self._keySingleAttr('movieshow', 40, 'translateY', 1.944)
        self._keySingleAttr('movieshow', 40, 'translateZ', -0.199)
        self._keySingleAttr('movieshow', 40, 'rotateX', 0)
        self._keySingleAttr('movieshow', 40, 'rotateY', 270)
        self._keySingleAttr('movieshow', 40, 'rotateZ', 0)

        timeOffset = (100 - (40))//15
        currentTime = 40
        tx = 14
        #flash
        for i in range(0, 15):
            #get the new key time
            currentTime = currentTime + timeOffset
            #random rotate + random move
            if i % 2 == 0:
                self._keySingleAttr('movieshow', currentTime, 'translateX', tx + 3)
            else:
                self._keySingleAttr('movieshow', currentTime, 'translateX', tx - 3)
            self._keySingleAttr('movieshow', currentTime, 'translateY', 2.5)
            self._keySingleAttr('movieshow', currentTime, 'translateZ', 0.078)
            self._keySingleAttr('movieshow', currentTime, 'rotateX', 0)
            self._keySingleAttr('movieshow', currentTime, 'rotateY', 270)
            self._keySingleAttr('movieshow', currentTime, 'rotateZ', 0)

        self._keySingleAttr('movieshow', 101, 'translateX', 33)
        self._keySingleAttr('movieshow', 101, 'translateY', 5.88)
        self._keySingleAttr('movieshow', 101, 'translateZ', -0.169)
        self._keySingleAttr('movieshow', 101, 'rotateX', -12.6)
        self._keySingleAttr('movieshow', 101, 'rotateY', 450.0)
        self._keySingleAttr('movieshow', 101, 'rotateZ', 0)

        self._keySingleAttr('movieshow', 133, 'translateX', 6.72)
        self._keySingleAttr('movieshow', 133, 'translateY', 2.14)
        self._keySingleAttr('movieshow', 133, 'translateZ', 0.035)
        self._keySingleAttr('movieshow', 133, 'rotateX', -6)
        self._keySingleAttr('movieshow', 133, 'rotateY', 444.0)
        self._keySingleAttr('movieshow', 133, 'rotateZ', 0)

        #body crashed
        self._keyObject('movieshow', 134, 170, 'translateX', -0.416, -1.881)
        self._keyObject('movieshow', 134, 170, 'translateY', 2.094,  2.094)
        self._keyObject('movieshow', 134, 170, 'translateZ', 12.584, 12.584)
        self._keyObject('movieshow', 134, 170, 'rotateX', -0.6, -0.6)
        self._keyObject('movieshow', 134, 170, 'rotateY', 359.0, 359.0)
        self._keyObject('movieshow', 134, 170, 'rotateZ', 0, 0)

        #track the ball
        currentTime = 171
        endTime= cmds.playbackOptions(query=True, maxTime=True)
        self._keyObject('movieshow', currentTime, endTime, 'translateX', 12, 28.183)
        self._keyObject('movieshow', currentTime, endTime, 'translateY', 0.037,  1.36)
        self._keyObject('movieshow', currentTime, endTime, 'translateZ', 14.604, 19.477)
        self._keyObject('movieshow', currentTime, endTime, 'rotateX', 3.6, 3.6)
        self._keyObject('movieshow', currentTime, endTime, 'rotateY', 0, 0)
        self._keyObject('movieshow', currentTime, endTime, 'rotateZ', 0, 0)
        print "go left"
        self.cn5Btn.setEnabled(True)


    #show the defend action for the monster
    def _handleDefendButton(self):
        #driven: all arms and joint; driver: the translateX of the ball
        self._rightArmDrivenKeyframe()
        #set the new values
        cmds.move( -2.5, 0, 0, 'ball', relative=True)
        cmds.rotate('0', '-72', '0', 'SF|RShoulderJoint|RightArm')
        cmds.rotate('0', '0', '53', 'SF|RShoulderJoint|RightArm|RHandJoint|RHand')
        #reset driven: all arms and joint; driver: the translateX of the ball
        self._rightArmDrivenKeyframe()

    #keyframe the ball
    def _handleBallButton(self):
        self._perturb('ball')

    #Set the action of the ball
    def _handleSetBallButton(self):
        #set first speak ball track
        self._keyObject('ball', -100, 50, 'translateX', 29.108, 29.063)
        self._keyObject('ball', -100, 50, 'translateY', 2, 2)
        self._keyObject('ball', -100, 50, 'translateZ', -0.2, -0.2)
        self._keyObject('ball', -100, 50, 'scaleX', 0.658, 0.658)
        self._keyObject('ball', -100, 50, 'scaleY', 0.658, 0.658)
        self._keyObject('ball', -100, 50, 'scaleZ', 0.658, 0.658)
        #50-61
        self._keySingleAttr('ball', 61, 'translateX', 28.615)
        self._keySingleAttr('ball', 61, 'translateY', 2.495)
        self._keySingleAttr('ball', 61, 'translateZ', -0.188)

        #65
        self._keySingleAttr('ball', 65, 'translateX', 28.609)
        self._keySingleAttr('ball', 65, 'translateY', 2.946)
        self._keySingleAttr('ball', 65, 'translateZ', -0.189)

        #70
        self._keySingleAttr('ball', 70, 'translateX', 28.604)
        self._keySingleAttr('ball', 70, 'translateY', 3.599)
        self._keySingleAttr('ball', 70, 'translateZ', -0.192)


        #75
        self._keySingleAttr('ball', 75, 'translateX', 29.66)
        self._keySingleAttr('ball', 75, 'translateY', 4.353)
        self._keySingleAttr('ball', 75, 'translateZ', -0.225)

        #80
        self._keySingleAttr('ball', 80, 'translateX', 31.04)
        self._keySingleAttr('ball', 80, 'translateY', 4.6)
        self._keySingleAttr('ball', 80, 'translateZ', -0.261)


        self._keySingleAttr('ball', 85, 'translateX', 29.348)
        self._keySingleAttr('ball', 85, 'translateY', 4.013)
        self._keySingleAttr('ball', 85, 'translateZ', -0.215)

        self._keySingleAttr('ball', 97, 'translateX', 26.352)
        self._keySingleAttr('ball', 97, 'translateY', 4.32)
        self._keySingleAttr('ball', 97, 'translateZ', -0.137)
        self._keySingleAttr('ball', 97, 'scaleX', 0.658)
        self._keySingleAttr('ball', 97, 'scaleY', 0.658)
        self._keySingleAttr('ball', 97, 'scaleZ', 0.658)

        self._keySingleAttr('ball', 135, 'translateX', 1.614)
        self._keySingleAttr('ball', 135, 'translateY', 1.651)
        self._keySingleAttr('ball', 135, 'translateZ', -0.083)
        self._keySingleAttr('ball', 135, 'scaleX', 0.057)
        self._keySingleAttr('ball', 135, 'scaleY', 0.057)
        self._keySingleAttr('ball', 135, 'scaleZ', 0.057)

        self._keySingleAttr('ball', 152, 'translateX', 7.754)
        self._keySingleAttr('ball', 152, 'translateY', 0.129)
        self._keySingleAttr('ball', 152, 'translateZ', -0.135)

        self._keySingleAttr('ball', 180, 'translateX', 13.21)
        self._keySingleAttr('ball', 180, 'translateY', 1.17)
        self._keySingleAttr('ball', 180, 'translateZ', -0.284)

        self._keySingleAttr('ball', 220, 'translateX', 19.724)
        self._keySingleAttr('ball', 220, 'translateY', 1.235)
        self._keySingleAttr('ball', 220, 'translateZ', -0.458)

        self._keySingleAttr('ball', 260, 'translateX', 23.946)
        self._keySingleAttr('ball', 260, 'translateY', 0.233)
        self._keySingleAttr('ball', 260, 'translateZ', -0.566)
        self._keySingleAttr('ball', 260, 'scaleX', 0.374)
        self._keySingleAttr('ball', 260, 'scaleY', 0.374)
        self._keySingleAttr('ball', 260, 'scaleZ', 0.374)

        self._keySingleAttr('ball', 350, 'translateX', 28.913)
        self._keySingleAttr('ball', 350, 'translateY', 1.32)
        self._keySingleAttr('ball', 350, 'translateZ', -0.702)
        self._keySingleAttr('ball', 350, 'scaleX', 2)
        self._keySingleAttr('ball', 350, 'scaleY', 2)
        self._keySingleAttr('ball', 350, 'scaleZ', 2)

    #keyframe for the right arm defend action
    def _rightArmDrivenKeyframe(self):
        cmds.setDrivenKeyframe('SF|RShoulderJoint|RightArm|RHandJoint|RHand.rotateX',currentDriver='ball.translateX')
        cmds.setDrivenKeyframe('SF|RShoulderJoint|RightArm|RHandJoint|RHand.rotateY',currentDriver='ball.translateX')
        cmds.setDrivenKeyframe('SF|RShoulderJoint|RightArm|RHandJoint|RHand.rotateZ',currentDriver='ball.translateX')
        cmds.setDrivenKeyframe('SF|RShoulderJoint|RightArm.rotateX',currentDriver='ball.translateX')
        cmds.setDrivenKeyframe('SF|RShoulderJoint|RightArm.rotateY',currentDriver='ball.translateX')
        cmds.setDrivenKeyframe('SF|RShoulderJoint|RightArm.rotateZ',currentDriver='ball.translateX')

    def _handlePlayButton(self):
        #time frame
        startTime=cmds.playbackOptions(query=True, minTime=True)
        endTime=cmds.playbackOptions(query=True, maxTime=True)
        #cmds.selectKey( objName, time=(startTime, endTime), attribute=tarAttr, keyframe=True )
        cmds.keyTangent( inTangentType='linear', outTangentType='linear')
        cmds.playblast( s="fight", f="myMovie.mv" )
        cmds.play(forward = True)

    def _handleRestoreButton(self):
        ball = cmds.ls('ball')[0]
        if(ball != None):
            cmds.delete(ball)
        cmds.polySphere(r=0.658, n='ball', ax = [0,0,0])
        cmds.move(29.108,2,-0.2, 'ball')

    #perturb the individual object
    def _perturb(self, selectObj):
        cmds.select(selectObj)
        total = cmds.polyEvaluate(v=True)
        for i in range(0, total):
            x = random.uniform(0, 0.7)
            y = random.uniform(0, 0.7)
            z = random.uniform(0, 0.7)
            cmds.polyMoveVertex(selectObj+'.vtx['+str(i)+']', lt=[x, y, z])

# function: key the certain attribute of the object in a duration
    def _keyObject(self, objName, startTime, endTime, tarAttr, startValue, endValue):
        #cmds.cutKey(objName, time=(startTime, endTime), attribute= tarAttr)
        cmds.setKeyframe(objName, time=startTime, attribute=tarAttr, value=startValue)
        cmds.setKeyframe(objName, time=endTime, attribute=tarAttr, value=endValue)
        #cmds.selectKey(objName, time=(startTime, endTime), attribute=tarAttr, keyframe=True)
        cmds.keyTangent(inTangentType='linear', outTangentType='linear')

# function: key the certain attribute of the object in one time
    def _keySingleAttr(self, objName, startTime, tarAttr, value):
        #cmds.cutKey(objName, time=(startTime, endTime), attribute= tarAttr)
        cmds.setKeyframe(objName, time=startTime, attribute=tarAttr, value=value)
        #cmds.selectKey(objName, time=(startTime, endTime), attribute=tarAttr, keyframe=True)
        cmds.keyTangent(inTangentType='linear', outTangentType='linear')


########################################################################################################
#_____after set all the scene button, then set the view from the different point of view
########################################################################################################

#_________________ _handleCn1Buttons
    #look throught the scene 1
    def _handleCn1Button(self):
        cmds.select('scene1')
        cmds.lookThru('scene1');
#_________________ _handleCn2Buttons
    def _handleCn2Button(self):
        cmds.select('scene2')
        cmds.lookThru('scene2');
#_________________ _handleCn3Buttons
    def _handleCn3Button(self):
        cmds.select('scene3')
        cmds.lookThru('scene3');
#_________________ _handleCn4Buttons
    def _handleCn4Button(self):
        cmds.select('scene4')
        cmds.lookThru('scene4');
#_________________ _handleCn5Buttons
    def _handleCn5Button(self):
        cmds.select('movieshow')
        cmds.lookThru('movieshow');










