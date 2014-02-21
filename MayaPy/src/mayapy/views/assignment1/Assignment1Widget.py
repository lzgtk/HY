# Assignment1Widget.py
# (C)2013
# Scott Ernst
import nimble
from nimble import cmds
from pyglass.widgets.PyGlassWidget import PyGlassWidget

#___________________________________________________________________________________________________ Assignment1Widget
class Assignment1Widget(PyGlassWidget):
    """A class for Assignment 1"""

#===================================================================================================
#                                                                                       C L A S S

#___________________________________________________________________________________________________ __init__
    def __init__(self, parent, **kwargs):
        """Creates a new instance of Assignment1Widget."""
        super(Assignment1Widget, self).__init__(parent, **kwargs)
        self.exampleBtn.clicked.connect(self._handleExampleButton)
        self.homeBtn.clicked.connect(self._handleReturnHome)

#===================================================================================================
#                                                                                 H A N D L E R S

#___________________________________________________________________________________________________ _handleReturnHome
    def _handleExampleButton(self):
        """
        This callback creates a polygonal cylinder in the Maya scene.
        #Assignment2.py
        import random

        #set the grid
        cmds.grid(s=40)

        #set the random seed
        random.seed(1024)



        cmds.addAttr(longName="expansion", shortName="exp", attributeType='double', min=0,
                        max=100, defaultValue=100, keyable=True)

        #set the move along center of each two atoms
        locatorGrpName=cmds.group(empty=True, name='expansion_locator_grp#')
        cords=cmds.getAttr('H1.translate')[0]
        locatorName=cmds.spaceLocator(position=cords, name='H1_loc')[0]
        cmds.xform( locatorName, centerPivots=True)
        cmds.parent(locatorName, locatorGrpName)
        #pointConstraintName=cmds.pointConstraint(['O',locatorName],H1, name='H1_pointConstraint')[0]
        cmds.xform( locatorGrpName, centerPivots=True)
        #group for all H2O copies
        H2OS1 = cmds.group(empty=True, name='H2OS1')
        H2OS2 = cmds.group(empty=True, name='H2OS2')
        H2OS3 = cmds.group(empty=True, name='H2OS3')

        #time frame
        startTime=cmds.playbackOptions(query=True, minTime=True)
        endTime=cmds.playbackOptions(query=True, maxTime=True)

        #create instance for a group number of water molecules
        for i in range (0, 100):

        cmds.duplicate('H2O')
        #let the instances rotate
        objName='H2O' + str(i+1);
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

        #rotation random format
        selection = random.randint(1,3)
        if selection == 1:
            keyRot(objName, startTime, endTime, 'rotateX');
            keyTrans(objName, startTime, endTime, 'translateZ', random.randint(0,2));
        elif selection == 2:
            keyRot(objName, startTime, endTime, 'rotateY');
            keyTrans(objName, startTime, endTime, 'translateX', random.randint(0,2));
        else:
            keyRot(objName, startTime, endTime, 'rotateZ');
            keyTrans(objName, startTime, endTime, 'translateY', random.randint(0,2));
        #add each object into parent H2OS
        cmds.parent(objName, 'H2OS' + str(selection));

        #center the whole group

        cmds.xform(H2OS1, cp=True)
        keyRot(H2OS1, startTime, endTime, 'rotateX')
        cmds.xform(H2OS2, cp=True)
        keyRot(H2OS1, startTime, endTime, 'rotateY')
        cmds.xform(H2OS3, cp=True)
        keyRot(H2OS1, startTime, endTime, 'rotateZ')
        """
        H2O=self._makeMolecule()
        response = nimble.createRemoteResponse(globals())
        response.put('name', H2O)
#___________________________________________________________________________________________________ _handleReturnHome
    def _handleReturnHome(self):
        self.mainWindow.setActiveWidget('home')

#___________________________________________________________________________________________________ _makeMolecule
    #make a water molecule
    def _makeMolecule(self):
        #H2O
        O = cmds.polySphere(r=1, n='O', ax = [0,0,0]);
        H1 = cmds.polySphere(r=0.8, n='H1', ax=[0,0,0]);
        H2 = cmds.polySphere(r=0.8, n='H2', ax=[0,0,0]);
        cmds.move(0.0,0.0,1,H1, r=True)
        cmds.move(0.0,0.0,-1,H2, r=True)
        cmds.xform(H1, piv=[0,0,0], ws=True)
        cmds.xform(H2, piv=[0,0,0], ws=True)
        cmds.rotate(0,'60',0, H1);

        #group O, H1, H2 as a water molecule
        H2O = cmds.group( empty=True, name='H2O' )
        cmds.parent(H1,H2,O,H2O)

        #paint on colors for the water molecule
        #create red lambert
        cmds.sets( renderable=True, noSurfaceShader=True, empty=True, name='O_WhiteSG' )
        cmds.shadingNode( 'lambert', asShader=True, name='O_White' )
        cmds.setAttr( 'O_White.color', 1, 1, 1, type='double3')
        cmds.connectAttr('O_White.outColor', 'O_WhiteSG.surfaceShader')
        #create red lambert
        cmds.sets( renderable=True, noSurfaceShader=True, empty=True, name='H_RedSG' )
        cmds.shadingNode( 'lambert', asShader=True, name='H_Red' )
        cmds.setAttr( 'H_Red.color', 1, 0, 0, type='double3')
        cmds.connectAttr('H_Red.outColor', 'H_RedSG.surfaceShader')

        #assign the material
        cmds.sets('H1', edit=True, forceElement='H_RedSG')
        cmds.sets('H2', edit=True, forceElement='H_RedSG')
        cmds.sets('O', edit=True, forceElement='O_WhiteSG')
        return H2O
