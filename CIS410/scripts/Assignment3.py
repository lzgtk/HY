#Assignment3.py
import maya.cmds as cmds

#-------------------------------------------------
# Print all the vertex in the world
#-------------------------------------------------
cmds.polyCube(w=1, h=1, d=1, n='cube')

for i in range (0, 8):
    print "The index of the vertex is " + str(i)
    position = cmds.pointPosition('cube.vtx[' + str(i) + ']')
    print "Position is " + str(position)