import maya.cmds as cmds
import random

random.seed(1234)

cubeList = cmds.ls ('myCube*')

instanceGroupName = cmds.group(empty=True, name=transformName + '_instance_grp#')

if len(cubeList) > 0:
    cmds.delete(cubeList)

result = cmds.polyCube(w=1,h=1,d=1,name='myCube#')

#print 'result: ' + str(result)

transformName=result[0]

for i in range(0, 50):

    instanceResult=cmds.instance(transformName, name=transformName+'_instance#')
    
    #print 'instanceResult ' + str( instanceResult )
    
    cmds.parent(instanceResult, instanceGroupName)
    
    x=random.uniform(-10, 10)
    y=random.uniform(0,20)
    z=random.uniform(-10, 10)
    cmds.move(x, y, z, instanceResult)
    xRot=random.uniform(0,360)
    yRot=random.uniform(0,360)
    zRot=random.uniform(0,360)
    cmds.rotate(xRot,yRot,zRot, instanceResult)
    
    scalingFactor = random.uniform(0.3,1.5)
    
    cmds.scale(scalingFactor,scalingFactor,scalingFactor,instanceResult)

cmds.hide(transformName)

cmds.xform(instanceGroupName, centerPivots=True)